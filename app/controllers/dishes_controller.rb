class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  # GET /dishes
  def index
    menu = Menu.find(params[:menu])
    @dishes = Dish.where(menu: menu)
  end

  # GET /dishes/1
  def show
  end

  def add_to_cart
    dish = Dish.find(params[:dish_id])
    order = Order.find_or_create_by(user: current_user)
    order.add(dish, dish.price)
    menu = Menu.find(dish.menu_id)
    flash[:notice] = 'Successfully added to cart'
    redirect_to dishes_url(menu: menu)
  end

  # GET /dishes/new
  # def new
  #   @dish = Dish.new
  # end

  # GET /dishes/1/edit
  # def edit
  # end

  # # POST /dishes
  # def create
  #   @dish = Dish.new(dish_params)
  #
  #   if @dish.save
  #     redirect_to @dish, notice: 'Dish was successfully created.'
  #   else
  #     render :new
  #   end
  # end
  #
  # # PATCH/PUT /dishes/1
  # def update
  #   if @dish.update(dish_params)
  #     redirect_to @dish, notice: 'Dish was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end
  #
  # # DELETE /dishes/1
  # def destroy
  #   @dish.destroy
  #   redirect_to dishes_url, notice: 'Dish was successfully destroyed.'
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dish_params
      params.require(:dish).permit(:name, :allergy_info, :price, :calories, :img_url)
    end
end
