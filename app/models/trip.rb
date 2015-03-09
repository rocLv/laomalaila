class Trip < ActiveRecord::Base
  enum ways: %w[bus train high_speed_railway air]
end
