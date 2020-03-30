class Food
  attr_reader :fdcId,
              :description,
              :brandOwner,
              :ingredients

  def initialize(attributes)
    @fdcId = attributes[:fdcId]
    @description = attributes[:description]
    @brandOwner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
