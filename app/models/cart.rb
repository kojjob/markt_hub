class Cart < ApplicationRecord
  belongs_to :user

  has_many :line_items, dependent: :destroy # curremt_cart.line_items
  has_many :products, through: :line_items  # curremt_cart.products
end
 