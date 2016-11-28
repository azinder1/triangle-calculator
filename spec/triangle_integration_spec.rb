require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it ('processes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('side1', :with => '15')
    fill_in('side2', :with => '15')
    fill_in('side3', :with => '17')
    click_button('Find out!')
    expect(page).to have_content('This is an scalene')
  end
end
