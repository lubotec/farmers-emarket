class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :order_product
end
