class Powder < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :powder_image_id, PowderImageIdUploader
  
  def self.looks(search, word)
    if search == "perfect_match"
      @Powder = Powder.where(['powder_name LIKE(?) OR powder_tool LIKE(?)',"%#{word}%","%#{word}%"])
    elsif search == "forward_match"
      @Powder = Powder.where(['powder_name LIKE(?) OR powder_tool LIKE(?)',"%#{word}%","%#{word}%"])
    elsif search == "backward_match"
      @Powder = Powder.where(['powder_name LIKE(?) OR powder_tool LIKE(?)',"%#{word}%","%#{word}%"])
    elsif search == "partial_match"
      @Powder = Powder.where(['powder_name LIKE(?) OR powder_tool LIKE(?)',"%#{word}%","%#{word}%"])
    else
      @Powder = Powder.all
    end
  end
  
end
