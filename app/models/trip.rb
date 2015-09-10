class Trip < ActiveRecord::Base
  belongs_to :travel_order

  has_many   :bus_prices
  has_many   :train_prices
  has_many   :air_prices
  has_many   :car_prices

  enum way: %w[bus train high_speed_railway air]
end
