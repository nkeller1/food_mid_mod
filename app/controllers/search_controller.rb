class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/generalSearchInput=sweet+potatos?api_key=OLG4ATJWCkL70Wp06zjfstNvM6hefUHiyYbhJLdf")

    require "pry"; binding.pry
  end
end
