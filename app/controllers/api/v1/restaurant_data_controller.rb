class Api::V1::RestaurantDataController < ApiController

  def index
    category = RestaurantCategory.find_by(title: params[:cat])
    @collection = Restaurant.find_by(restaurant_category_id: category[:id])
    render json: { entries: @collection }
  end
end
