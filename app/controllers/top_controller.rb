class TopController < ApplicationController
  def index
    @products = Product.order('id ASC').limit(10)
  end

  def entry
    @products = Product.find(params[:id])
  end

end
