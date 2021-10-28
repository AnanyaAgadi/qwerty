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

  # def thank_you
  #   @name = params[:name]
  #   @email = params[:email]
  #   @message = params[:message]
  #   ActionMailer::Base.mail(from: @email,to: 'your-email@example.com',
  #   subject: "A new contact form message from #{@name}",body: @message).deliver_now
  # end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@name,@email,@message).deliver_now
  end
end
