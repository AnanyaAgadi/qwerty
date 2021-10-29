class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    # @orders = Order.all
    @orders = Order.includes(:product).all
  end

  def new
  end

  def create
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
  end
end
