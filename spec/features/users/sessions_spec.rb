require 'rails_helper'

RSpec.describe "Users::Sessions", type: :request do
  describe "create new session" do
    let(:user) { create(:user) }

    before do
      visit new_user_session_path
      fill_in 'user_login', with: user.name
      fill_in 'user_password', with: user.password

      click_button '登陆'
    end

    it { expect(page).to have_content(user.name) }
  end
end
