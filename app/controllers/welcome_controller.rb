class WelcomeController < ApplicationController
  def index
  	@stores = Store.all
  	@products = Product.all
  end
end
