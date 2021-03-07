class ClothesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]
  before_action :set_clothe, only: [:show, :edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def index
    @clothes = Clothe.order('created_at DESC')
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
  end

  def edit
  end

  def update
    if @clothe.update(clothe_params)
      redirect_to clothe_params
    else
      render :edit
    end
  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :text, :category_id, :size_id,
                                   :state_id, :delivery_burden_id, :delivery_method_id,
                                   :delivery_source_id, :delivery_day_id, :price, :image).merge(user_id: current_user.id)
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end

  def correct_user
    redirect_to action: :index unless @clothe.user_id == current_user.id
  end
end
