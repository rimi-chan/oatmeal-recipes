class User < ApplicationRecord
  def self.guest
    find_or_create_by!(email: 'guest@wxample.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :oats, dependent: :destroy
  has_many :powders, dependent: :destroy
  
  mount_uploader :user_image_id, UserImageIdUploader
  mount_uploader :profile_image_id, ProfileImageIdUploader

end
