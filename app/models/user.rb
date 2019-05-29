class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :restaurant
  has_one :farmer

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :avatar, presence: true
  validates :role, presence: true
  mount_uploader :photo, PhotoUploader
end
