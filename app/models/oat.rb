class Oat < ApplicationRecord
  mount_uploader :oat_image_id, OatImageIdUploader
end
