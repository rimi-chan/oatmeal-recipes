class Oat < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :oat_image_id, OatImageIdUploader
end
