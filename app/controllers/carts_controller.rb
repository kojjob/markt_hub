class CartsController < ApplicationController
  def show
    # Retrieve the current user's cart and display its contents
    @cart = @current_cart
  end

  def update
    # Update the cart based on user input
    # For example, you might adjust quantities or remove items
  end

  def destroy
    # Destroy the current user's cart
    # current_user.current_cart.destroy
    # redirect_to root_path, notice: "Cart was successfully cleared."
  end
end