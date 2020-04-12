class WelcomeController < ApplicationController
  def index
  	@stores = Store.all
  	@products = Product.all
	@categories = Category.all
	@keywords = Keyword.all  
  end
end
