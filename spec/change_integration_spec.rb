require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the change path', {:type => :feature}) do
  it('processes user entry and returns change') do
    visit('/')
    fill_in('change', :with => 118)
    click_button('Show my change!')
    expect(page).to have_content("Your change is 4 quarters, 1 dimes, 1 nickels and 3 pennies.")
  end
end
