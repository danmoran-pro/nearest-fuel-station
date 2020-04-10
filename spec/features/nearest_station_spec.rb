require 'rails_helper'

describe "As a user" do
  describe "visit '/', I see a dropdown menu and select select 'Turing'" do
    it "I click 'find ...', I should be on page '/search', and see the closest electric fuel station to me" do 
  
    station = Station.create({name: "", address: "", fuel_type: "", access_days_time_fr: ""})
    
    visit '/'

    select 'Turing', from: :location
    click_on "Find Nearest Station"

    expect(current_path).to eq(search_path)
  
    expect(page).to have_css('.station')
    expect(page).to have_css('.station-name')
    expect(page).to have_css('.station-address')
    expect(page).to have_css('.station-fuel-type')
    expect(page).to have_css('.station-access-times')
    end
  end
end



# As a user
# When I visit "/"
# And I select "Turing" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.