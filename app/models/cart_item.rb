class CartItem < ApplicationRecord
  belongs_to :item
  belongs_to :cart, optional: true
  belongs_to :purchase, optional: true
  has_many :users, through: :cart
  # has_many :users, through: :purchases
end
