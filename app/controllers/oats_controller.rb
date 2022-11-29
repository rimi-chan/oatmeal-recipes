class OatsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index,:show]
  
  def index
    @oats = Oat.all
  end

  def new
    @oat = Oat.new
  end

  def create
    @oat = current_user.oats.build(oat_params)
    if @oat.save
      redirect_to oat_path(@oat)
    else 
      render :new
    end
  end
  
  def show
    @oat = Oat.find_by(id:params[:id])
  end
  
  
  private
  def oat_params
    params.require(:oat).permit(:oat_name, :oat_image_id, :oat_tool, :oat_word, :oat_instructions)
  end
  
end
