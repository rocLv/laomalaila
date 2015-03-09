
module Features
  module SessionHelpers
    def login
      visit new_user_session_path

      fill_in 'user_login', with:'roc'
      fill_in 'user_password', with: '1' * 8

      click_button '登陆'
    end
  end
end
