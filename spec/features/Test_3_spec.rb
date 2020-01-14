require 'rails_helper'
#require 'factories/user.rb'

feature 'Capybara tutorial', js: true do
context 'Does the Test#3' do
    scenario 'Clicks on the first row and checks if it gets highlighted' do
        visit '/pages/test_3' 

        first('table tr').click
        within(first('table tr'))do
            
    end

    expect(page).to have_css('.highlighted')
    
        expect(first('table tr')).to have_css('.highlighted')
        #all('table tr').last.click

    end
    end
end