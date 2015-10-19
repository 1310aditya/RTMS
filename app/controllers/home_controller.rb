class HomeController < ApplicationController
  def index
  	@myproducts = Product.all
  end
end
