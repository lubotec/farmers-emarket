class FarmerPhoto < ApplicationRecord
  belongs_to :farmer
  mount_uploader :photo, PhotoUploader
end
