class SearchController < ApplicationController
  def index
    search_facade = SearchFacade.new

    @foods = search_facade.get_food
  end
end
