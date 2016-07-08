class Api::V1::CategoriesController < ApiController
  def index
    @collection = RestaurantCategory.all
    render json: { entries: @collection }
  end
end
