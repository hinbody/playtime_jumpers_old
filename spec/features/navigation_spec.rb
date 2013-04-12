require 'spec_helper'

describe "Navigation" do
  it "displays navigation links" do
    visit '/'
    page.should have_content('Home')
    page.should have_content('Bounce Houses')
    page.should have_content('Contact')
    page.should have_content('Order')
    page.should have_content('FAQ')
  end
  it "links to root_path" do
    visit '/'
    click_link('Home')
    current_path.should == root_path
  end
  it "links to bounce_houses_path" do
    visit '/'
    click_link('Bounce Houses')
    current_path.should == bounce_houses_path
  end
  it "links to contact_path" do
    visit '/'
    click_link('Contact')
    current_path.should == contact_path
  end
end
