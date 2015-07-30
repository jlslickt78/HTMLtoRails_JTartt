class StoreController < ApplicationController

  def index
	  page = params[:page].to_i
		@products = Product.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
	  @product = Product.find(params[:id])
  end
end
