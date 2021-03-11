class SearchesController < ApplicationController
  
  def index
    @clothes = Clothe.order('created_at DESC')
  end


end
