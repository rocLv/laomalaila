FactoryGirl.define do
  factory :user do
    name   'roc'
    email  'rocwar@gmail.com'
    mobile '13652885999'
    address 'Potou'
    password '1' * 8
    password_confirmation '1' * 8
  end
end
