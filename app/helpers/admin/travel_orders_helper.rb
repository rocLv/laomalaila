module Admin::TravelOrdersHelper
  def transport_field(travel_order)

    case travel_order.transports.to_sym
    when :bus_business, :bus_direct
      :bus_price_id
    when :train_up, :train_mid, :train_down, :railway_1, :railway_2
      :train_price_id
    when :plane_first, :plane_business, :plane_economic
      :air_price_id
    else
      :tran_price_id
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
