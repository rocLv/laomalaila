class Hotel < ActiveRecord::Base
  has_many :rooms

  accepts_nested_attributes_for :rooms
end
