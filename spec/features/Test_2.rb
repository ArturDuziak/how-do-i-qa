require 'rails_helper'
#require 'factories/user.rb'

feature 'Capybara tutorial', js: true do
    context 'Does the Test#2' do

        alert = 'div[role="alert"]'
        
        scenario 'Checks if the error message is displayed when the fields are empty' do
        
            visit '/pages/test_2'
            expect(page).to have_content('Data will appear here after submission.') 

            click_on('Submit')
            
            expect(page).to have_current_path('/pages/test_2')

            expect(page).to have_selector(alert, visible: true)
            expect(page).to have_css(alert, text: "Some data was missing")

        end

        scenario 'Fills all the fields with correct data' do

            visit '/pages/test_2'

            fill_in('Example textfield', with:'Jan')
            check('Example checkbox')
            select('Opt 2', from: 'Example select')

            choose('Example radiobutton opt 1')

            choose('Example radiobutton opt 2')

            click_on('Submit')
            
            expect(page).to have_selector(alert, visible: true)
            expect(page).to have_css(alert, text: 'Submitted successfully')

        end
    end
end