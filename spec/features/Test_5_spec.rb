require 'rails_helper'

feature 'Capybara tutorial', js: true do
    let!(:user) { create(:user) } # ,email:"adsda@email.com" to overwrite the email in factory

    context 'Does the Test#5' do 
        scenario 'Logs in as a user' do 

            visit 'pages/test_5'

            fill_in('user_email', with: user.email)
            fill_in('user_password', with: user.password)

            click_button('Log in')

            binding.pry
        end
    end

    context 'Does the Test#5 without loging in' do 
       
        before do
            allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(true)
            allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
        end

        scenario 'Test visits the page and checks if the user is logged in' do 

            visit 'pages/test_5'

            expect(page).to have_selector(:xpath, "/html[1]/body[1]/div[1]/div[1]/div[3]/div[1]/p[11]/strong[1]",text: user.email)
            
        end
    end
end