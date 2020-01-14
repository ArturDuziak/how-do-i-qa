require 'rails_helper'
#require 'factories/user.rb'

feature 'Capybara tutorial', js: true do
    context 'Does the Test#0' do
        scenario 'Does the Test#0' do

          visit '/pages/test_0'
        
          expect(page).to have_content('Test #0')

          click_on('Next')
        
          expect(page).to have_content('Test #1') 
           
        end      
    end
end

       
    
