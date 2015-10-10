class TopController < ReviewController

 before_action :authenticate_user!, only:[:search, :entry]

  def index
    @products = Product.order('id ASC').limit(10)
  end

  def search
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end

  def post
    redirect_to action: :index
    Review.create(create_params)
  end

  def entry
    @products = Product.find(params[:id])
  end

  def create_params
params.permit(:nickname, :rate, :note, :product_id)
  end
end
