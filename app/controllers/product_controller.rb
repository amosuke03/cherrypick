class ProductController < ReviewController
  def show
    @product = Product.find(params[:id])
  end
end
