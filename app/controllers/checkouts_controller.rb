class CheckoutsController < ApplicationController
  def show
    @person = current_user
  end

  def checkout
    is_input_valid = is_cvc_valid(params[:user][:cvc])
    if !is_input_valid
      show_error("CVC is not valid")
    end
  end

  private
  def is_cvc_valid(cvc)
    cvc.length == 3
  end

  def show_error(message)
    flash[:error] = message
    redirect_to checkout_path
  end
end
