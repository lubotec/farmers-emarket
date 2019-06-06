class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :restaurant
  has_one :farmer
  mount_uploader :avatar, PhotoUploader
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :avatar, presence: true
  validates :role, presence: true

  def role_object 
    role == "Farmer" ? farmer : restaurant
  end

end
