class CheckoutsController < ApplicationController
  def show
    @person = current_user
  end

  def checkout
    if !valid_date?(params[:user][:expiration_date])
      show_error("Date format is invalid. It should be MM/YY.")
    end
  end

  private
  def valid_date?(str, format="%m/%Y" )
    Date.strptime(str,format) rescue false
  end

  def show_error(message)
    flash[:error] = message
    redirect_to checkout_path
  end
end
