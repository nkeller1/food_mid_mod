class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/search?generalSearchInput=sweet%20potatoes&api_key=OLG4ATJWCkL70Wp06zjfstNvM6hefUHiyYbhJLdf")

    require "pry"; binding.pry
  end
end
