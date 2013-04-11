require 'spec_helper'

describe "info/home.html.erb" do
  it "displays the proper headings" do
    visit '/'
    page.should have_selector('h1', :text => 'Michiana\'s home for bounce house rentals')
    page.should have_selector('h3', :text => 'Quality, safe, and affordable fun for all')
    page.should have_selector('h3', :text => 'Bouncers, jumpers, bounce houses, moonwalks')
    page.should have_content('info@playtimejumpers.com')
    page.should have_content('(574)383-9547')
  end
end
