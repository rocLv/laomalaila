FactoryGirl.define do
  factory :trip do
    travel_order_id 1
    from_location 'dongfang'
    to_location 'haikou'
    departure_time '2015-03-14'
    arrive_time '2015-03-14'
  end
end
