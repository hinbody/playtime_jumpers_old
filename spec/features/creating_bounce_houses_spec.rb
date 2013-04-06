require 'spec_helper'

feature 'Creating Bounce Houses' do
  scenario "can create a bounce_house" do
    visit '/bounce_houses'

    click_link 'New Bounce House'
  end
end
