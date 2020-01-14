require 'rails_helper'
#require 'factories/user.rb'

feature 'Capybara tutorial', js: true do
    context 'Does the Test#1' do
        scenario 'Clicks on the second next button' do
            
            visit '/pages/test_1'

         within ('.text-right') do
          click_on('Next')
         end
         
        #IS it possible to get it into the scenario?
        expect(page).to have_content('Test #2')

    end
end
end