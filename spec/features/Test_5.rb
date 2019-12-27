require 'rails_helper'
#require 'factories/user.rb'

feature 'Capybara tutorial', js: true do
    context 'Does the Test#5' do 
        scenario 'Logs in as a user' do 

            #user = build(:user)

            visit 'pages/test_5'

            fill_in('#user_email', with: user.login)
            fill_in('#user_password', with: user.password)

            sleep 5
        end
    end
end