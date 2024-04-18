class ApplicationController < ActionController::Base
  before_action :set_current_cart

  def set_current_cart
    return unless current_user

    if current_user.cart.nil?
      @current_cart = current_user.create_cart
    else
      @current_cart = current_user.cart
    end

    session[:cart_id] = @current_cart.id
  end
end
