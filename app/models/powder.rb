class Powder < ApplicationRecord
  mount_uploader :powder_image_id, PowderImageIdUploader
end
