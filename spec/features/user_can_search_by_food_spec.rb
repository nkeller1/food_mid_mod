require 'rails_helper'

RSpec.describe 'Search for food items' do
  it "returns details about the food, sweet potatos" do

    visit '/'

    fill_in 'q', with: "Sweet Potatos"

    click_button "Search"

    expect(current_path).to eq(foods_path)

    expect(page).to have_content("50 Total Results")

    expect(page).to have_css(".foods", count: 10)

    within(first(".foods")) do
      expect(page).to have_css(".upc")
      expect(page).to have_css(".description")
      expect(page).to have_css(".brand_owner")
      expect(page).to have_css(".ingredients")
    end
  end
end




# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
