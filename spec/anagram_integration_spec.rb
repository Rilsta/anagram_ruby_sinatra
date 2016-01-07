require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
describe('the anagram path on page', {:type => :feature}) do
  it('filter anagrams') do
    visit('/')
    fill_in('word', :with => "meet")
    fill_in('comparator', :with => "teme teem derp")
    click_button('Submit')
    expect(page).to have_content("teme teem")
  end
end
