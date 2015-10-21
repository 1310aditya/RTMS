class HomeController < ApplicationController
  #layout 'application'
  def index
  	@myproducts = Product.all
  end
end
