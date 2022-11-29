class Powder < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :powder_image_id, PowderImageIdUploader
end
