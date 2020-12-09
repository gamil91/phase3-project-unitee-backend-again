class User < ApplicationRecord
    has_one :cart, dependent: :destroy
    # has_many :cart_items, through: :cart
    has_many :purchases, dependent: :destroy
    has_many :cart_items, through: :purchases
end
