class PurchasesController < ApplicationController
  before_action :receive_clothe, only: [:index, :create]

  def index
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.valid?
      @purchase.save
      return redirect_to root_path
    else
      render :index
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:postal_code, :prefecture, :city, :address_1, :address_2, :phone_number)
  end

  def receive_clothe
    @clothe = Clothe.find(params[:clothe_id])
  end

end
