class PurchasesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :receive_clothe, only: [:index, :create]
  before_action :listing_user, only: [:index, :create]

  def index
    @user_purchase = UserPurchase.new
  end

  def create
    @user_purchase = UserPurchase.new(purchase_params)
    if @user_purchase.valid?
      pay_item
      @user_purchase.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def purchase_params
    params.require(:user_purchase).permit(:postal_code, :prefecture, :city, :address_1, :address_2,
                                          :phone_number).merge(token: params[:token], clothe_id: params[:clothe_id], user_id: current_user.id)
  end

  def receive_clothe
    @clothe = Clothe.find(params[:clothe_id])
  end

  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @clothe.price,
      card: purchase_params[:token],
      currency: 'jpy'
    )
  end

  def listing_user
    redirect_to root_path if @clothe.user_id == current_user.id || @clothe.history.present?
  end
end
