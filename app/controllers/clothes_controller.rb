class ClothesController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
  end
  
  def new
    @clothe = Clothe.new
  end

  def create
  end

end
