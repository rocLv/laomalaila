FactoryGirl.define do
  factory :travel_order do
    user_id                 1
    estimate_departure_time DateTime.now
    estimate_arrive_time    DateTime.now + 2.days
    from                    'dongfang'
    to                      'haikou'
    budget                  9999
    phone                   '13652885999'
    email                   'roc@g.cn'
    tax_delivery_address    'some'
    fax                     '0759-3900873'
  end
end
