class Oat < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :oat_image_id, OatImageIdUploader
  
  def self.looks(search, word)
    if search == "perfect_match"
      @Oat = Oat.where(['oat_name LIKE(?) OR oat_tool LIKE(?)',"%#{word}%","%#{word}%"])
    elsif search == "forward_match"
      @Oat = Oat.where(['oat_name LIKE(?) OR oat_tool LIKE(?)',"%#{word}%","%#{word}%"])
    elsif search == "backward_match"
      @Oat = Oat.where(['oat_name LIKE(?) OR oat_tool LIKE(?)',"%#{word}%","%#{word}%"])
    elsif search == "partial_match"
      @Oat = Oat.where(['oat_name LIKE(?) OR oat_tool LIKE(?)',"%#{word}%","%#{word}%"])
    else
      @Oat = Oat.all
    end
  end
end
