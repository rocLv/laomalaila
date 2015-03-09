class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name,
    presence: true,
    uniqueness: {
      case_sensitive: false,
    }
  validates :email,
    presence: true,
    uniqueness: {
      case_sensitive: false,
    }
  validates :mobile, presence: true
  validates :address, presence: true

  enum roles: [ :normal, :vip, :admin ]

  attr_accessor :login

  mount_uploader :avatar, AvatarUploader

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).
        where(["name = :value OR email = :value", { value: login.downcase }]).
        first
    else
      where(conditions.to_h).first
    end
  end
end
