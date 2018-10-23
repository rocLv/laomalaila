class TravelOrder < ActiveRecord::Base
  has_many :trips

  # !DO NOT MODIFY enum VALUE
  enum status: [:modifiable, :submitted, :confirmed, :planned, :paid,
    :finished, :failed]
  enum types:  [:economic, :standard, :luxurious]
  enum transports: [:bus_business, :bus_direct, :train_up, :train_mid,
    :train_low, :railway_1,:railway_2, :plane_first, :plane_business,
    :plane_economic]
  enum hotel_ranks: [:between_150_200, :between_200_300, :between_300_400,
    :above_400]
  enum pick_ups: [:free, :taxi, :special]

  validates :user_id, presence: true
  validates :estimate_departure_time, presence: true
  validates :from, presence: true
  validates :to, presence: true
  validates :budget, presence: true
  validates :phone, format: { with: /[0-9]{11}/ }
  validates :fax, format: { with: /\A[0-9]{3,4}\-[0-9]{7,8}/ }
  validates :email, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    on: :create }

  accepts_nested_attributes_for :trips

  scope :modifiable, -> { where('status = ?', statuses[:modifiable]) }
  scope :submitted,  -> { where('status = ?', statuses[:submitted]) }
  scope :confirmed,  -> { where('status = ?', statuses[:confirmed]) }
  scope :planned,    -> { where('status = ?', statuses[:planned]) }
  scope :paid,       -> { where('status = ?', statuses[:paid]) }
  scope :finished,   -> { where('status = ?', statuses[:finished]) }
  scope :failed,     -> { where('status = ?', statuses[:failed]) }

  def state
    case status.to_sym
    when :modifiable then '可修改'
    when :submitted  then '已提交'
    when :confirmed  then '客服已确认'
    when :planned    then '订单已处理,请去订单详情页面支付'
    when :paid       then '订单已支付'
    when :finished   then '已完成'
    when :failed     then '已失败'
    end
  end

  def notice_type(type)
    case type
    when 0 then '您选择的是经济型套餐!'
    when 1 then '您选择的是标准型套餐!'
    when 2 then '您选择的是豪华型套餐!'
    else
      '请选择正确的套餐类型套餐'
    end
  end

  def transport
    return '高铁二等座' unless transports

    case transports.to_sym
    when :bus_business then '商务大巴'
    when :bus_direct   then '直达快班'
    when :train_up     then '火车上铺'
    when :train_mid    then '火车中铺'
    when :train_down   then '火车下铺'
    when :railway_1    then '高铁一等座'
    when :railway_2    then '高铁二等座'
    when :plane_first  then '飞机头等舱'
    when :plane_business then '飞机公务舱'
    when :plane_economic then '飞机经济舱'
    end
  end

  def hotel_price_tier
    return "150 - 200元之间" unless hotel_ranks

    tier = hotel_ranks.scan(/\d+/)
    if tier.count == 1
      "#{tier[0]}元以上"
    elsif tier.count == 2
      "#{tier[0]} - #{tier[1]}元之间"
    end
  end

  def pickup
    return '自行安排' unless pick_ups

    case pick_ups.to_sym
    when :free    then '自行到达酒店'
    when :taxi    then '需要我们为您安排出租车接机/车'
    when :special then '需要我们为您安排专车接机/车'
    else
      false
    end
  end
end
