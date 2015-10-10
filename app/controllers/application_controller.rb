class ApplicationController < ActionController::Base

  def after_sign_out_path_for(resource)
    '/users/sign_in'
  end
def show
  @product = Product.find(params[:id])
end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
