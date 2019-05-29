class ProductPhoto < ApplicationRecord
  belongs_to :product
  mount_uploader :data, PhotoUploader
end
