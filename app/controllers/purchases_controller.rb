class PurchasesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :receive_clothe, only: [:index, :create]

  def index
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.valid?
      pay_item
      @purchase.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:postal_code, :prefecture, :city, :address_1, :address_2,
                                     :phone_number).merge(token: params[:token])
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
end
