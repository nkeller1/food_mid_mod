class SearchFacade
  def get_food
    service = FDAService.new
    food_info =  service.get_food_data[:foods]
    food_info.map do |attributes|
      Food.new(attributes)
    end

  end
end
