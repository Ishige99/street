class SearchesController < ApplicationController
  before_action :search_product, only: [:index, :search]

  def index
    @clothes = Clothe.order('created_at DESC')
    set_clothe_column
  end

  def search
    @results = @c.result.order('created_at DESC')
  end

  private 

  def search_product
    @c = Clothe.ransack(params[:q])
    @category = Category.where.not(id: 1)
    @size = Size.where.not(id: 1)
    @state = State.where.not(id: 1)
  end

  def set_clothe_column
    @clothe_name = Clothe.select("name").distinct
  end

end
