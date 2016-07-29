class CheckoutsController < ApplicationController
  def show
    @person = current_user
  end
end
