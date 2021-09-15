class SimplePagesController < ApplicationController
  

  def index
    @products = Product.limit(3)
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end
  
  def landing_page
    @products = Product.limit(3)
  end
end
