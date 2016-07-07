class Api::V1::CategoryDataController < ApiController
  def index
    @collection = RestaurantCategory.all
    render json: { entries: @collection }
  end
end
