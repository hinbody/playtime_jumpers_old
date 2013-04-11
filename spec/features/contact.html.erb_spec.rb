require 'spec_helper'

describe "info/contact.html.erb" do
  it "displays contact info" do
    visit '/contact'
    page.should have_content('info@playtimejumpers.com')
    page.should have_content('(574)383-9547')
  end
end
