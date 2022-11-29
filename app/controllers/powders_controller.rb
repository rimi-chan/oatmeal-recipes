class PowdersController < ApplicationController
  
  before_action :authenticate_user!, except: [:index,:show]
  
  def index
    @powders = Powder.all
  end

  def new
    @powder = Powder.new
  end

  def create
    @powder = current_user.powders.build(powder_params)
    if @powder.save
      redirect_to powder_path(@powder)
    else 
      render :new
    end
  end
  
  def show
    @powder = Powder.find_by(id:params[:id])
  end
  
  
  private
  def powder_params
    params.require(:powder).permit(:powder_name, :powder_image_id, :powder_tool, :powder_word, :powder_instructions)
  end
  
end