class Item < ApplicationRecord
    has_many :images, dependent: :destroy
    has_many :cart_items
end
