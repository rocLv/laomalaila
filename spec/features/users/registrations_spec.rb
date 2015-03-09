require 'rails_helper'

RSpec.describe User, :type => :request do

  describe 'signs up' do
    it 'successfully' do
      visit new_user_registration_path

      fill_in 'user_name', with: 'rocLv'
      fill_in 'user_email', with: 'rocwar@gmail.com'
      fill_in 'user_password', with: '12345678'
      fill_in 'user_password_confirmation', with: '12345678'
      fill_in 'user_mobile', with: '13652885999'
      fill_in 'user_address', with: 'po tou'

      click_button '注册'

      instance_double(User,:send_welcome_email)
      expect(page).to have_content('successfully')
    end
  end
end
