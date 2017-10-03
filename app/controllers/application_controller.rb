class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :categories
  before_action :brands
  before_action :line_items
  before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
   devise_parameter_sanitizer.permit(:account_update, keys: [:role])
	end

  def categories 
  	@categories = Category.order(:name)
  end

  def brands
    @brands = Product.pluck(:brand).sort.uniq
	end

  def line_items
    @line_items = LineItem.all
  end
end
