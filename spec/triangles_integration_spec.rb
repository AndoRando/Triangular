require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangulation path', {:type => :feature}) do
  it('accepts three inputs as sides of a potential triangle and tells the user what it is') do
    visit('/')
    fill_in('side_moe', :with => 2)
    fill_in('side_larry', :with => 3)
    fill_in('side_curly', :with => 8)
    click_button('Triangulate!')
    expect(page).to have_content("Go home triangle, you're drunk! (and you're not even a triangle)")
  end
end
