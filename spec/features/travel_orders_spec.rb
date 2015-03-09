require 'rails_helper'

RSpec.describe "TravelOrders", type: :request do

 describe "GET /travel_orders" do

   context "unauthorised user" do
     it 'redirect to login page' do
       get travel_orders_path
       expect(response).to have_http_status(302)
     end
   end

   context "authorised user" do
     let(:user) { FactoryGirl.create(:user) }

     before do
       sign_in(user)
     end

     it 'can see history travel orders' do
       visit travel_orders_path
       expect(page).to have_content(user.name)
     end
   end
 end

 describe '#new' do
   context 'unauthorticated user' do
     it 'need login first' do
       get new_travel_order_path
       expect(response).to have_http_status(302)
     end
   end

   context 'authorticated user' do
     let(:user) { FactoryGirl.create(:user) }
     before { sign_in(user) }

     it 'create new travel order' do
       visit new_travel_order_path

       fill_in 'travel_order_estimate_departure_time', with: '2015-03-14'
       fill_in 'travel_order_from', with: 'dongfang'
       fill_in 'travel_order_to', with: 'haikou'
       fill_in 'travel_order_phone', with: '13652885999'
       fill_in 'travel_order_email', with: 'roc@g.cn'
       fill_in 'travel_order_fax', with: '0759-3900873'

       click_button '委托网站制定旅行计划'

       expect(response).to have_http_status(302)
     end
   end
 end

 def sign_in(user)
   visit new_user_session_path
   fill_in 'user_login', with: user.name
   fill_in 'user_password', with: user.password

   click_button '登陆'
 end
end
