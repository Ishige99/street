class ClothesController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
  end
  
  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)
    if @clothe.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :text, 
                                   :category_id, :seze_id, 
                                   :state_id, :delivery_burden_id, 
                                   :delivery_method_id, :delivery_source_id, 
                                   :delivery_day_id, :price, 
                                   images: []).merge(user_id: current_user.id)
  end

end
