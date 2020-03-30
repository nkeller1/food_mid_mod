class FDAService
  def conn
    conn = Faraday.new(url: "https://api.nal.usda.gov")
  end

  def get_food_data(food)
    response = conn.get("fdc/v1/search?generalSearchInput=#{food}&api_key=OLG4ATJWCkL70Wp06zjfstNvM6hefUHiyYbhJLdf")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
