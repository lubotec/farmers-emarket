class ProductPhoto < ApplicationRecord
  mount_uploader :data, PhotoUploader
  belongs_to :product
 end
