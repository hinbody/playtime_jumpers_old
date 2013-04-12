require 'spec_helper'

describe "Info" do
  describe "Navigation" do
    it "should display navigation links" do
      visit '/'
      page.should have_content('Home')
      page.should have_content('Bounce Houses')
      page.should have_content('Contact')
      page.should have_content('Order')
      page.should have_content('FAQ')
    end
    it "should follow navigation links" do
      visit '/'
      click_link('Home')
      current_path.should == root_path
    end
    it "link to bounce_houses_path" do
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
end
