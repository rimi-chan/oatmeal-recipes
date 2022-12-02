class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :oats, dependent: :destroy
  has_many :powders, dependent: :destroy
  
  mount_uploader :user_image_id, UserImageIdUploader
  mount_uploader :profile_image_id, ProfileImageIdUploader

end
