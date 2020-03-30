class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov/api/sweet+potatoes/v1/nearest.json?api_key=OLG4ATJWCkL70Wp06zjfstNvM6hefUHiyYbhJLdf&location=Denver+CO")

    require "pry"; binding.pry
  end
end
