require 'rails_helper'

feature 'Capybara tutorial', js: true do
    context 'Does the Test#4' do 
        scenario 'Clicks on the button and waits for the answer from the server' do
            visit 'pages/test_4'
            
            text_selector = '#ajax-result'

            expect(page).to have_css(text_selector, text: 'Text of this element should change after call completes.')

            click_on('Click me to fire an AJAX call')

            expect(page).to have_css(text_selector, text: 'This is answer from the server')

        end
    end
end