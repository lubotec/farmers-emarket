class FarmerPhoto < ApplicationRecord
  belongs_to :farmer
  mount_uploader :data, PhotoUploader
end
