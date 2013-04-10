require 'spec_helper'

feature 'Creating Bounce Houses' do
  scenario "can create a bounce_house" do
    visit '/bounce_houses'

    click_link 'New Bounce House'

    fill_in 'Name', :with => 'Sports'
    fill_in 'Description', :with => 'Sports bouncer, 13x13x14'
#not sure why bounce_house[...] is necessary but the spec would not pass w/o it
    fill_in 'bounce_house[five_hour_rental]', :with => '125'
    fill_in 'bounce_house[all_day_rental]', :with => '140'
    click_button 'Create Bounce House'

    expect(page).to have_content('Your new Bounce House has been created.')
    expect(page.current_url).to eql(bounce_houses_url)
  end
end
