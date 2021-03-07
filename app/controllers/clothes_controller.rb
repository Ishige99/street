class ClothesController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @clothes = Clothe.order("created_at DESC")
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

  def show
    @clothe = Clothe.find(params[:id])
  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :text, :category_id, :size_id, 
                                   :state_id, :delivery_burden_id, :delivery_method_id, 
                                   :delivery_source_id, :delivery_day_id, :price, :image
                                  ).merge(user_id: current_user.id)
  end

end
