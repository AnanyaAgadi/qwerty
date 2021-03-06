class CommentsController < ApplicationController
  load_and_authorize_resource
  def index
    @comments = @products.comment.paginate(page: params[:page], per_page: 4)
  end
  
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    # @comments = Comments.paginate(page: params[:page], per_page: 4)
    # @comments = @products.comment.paginate(page: params[:page], per_page: 4)
    @comment.user = current_user
      
    respond_to do |format|
      if @comment.save
        format.html {redirect_to @product, notice: 'Review was created successfully.'}
        format.json {render :show, status: :created,location: @product }
      else
        format.html {redirect_to @product, alert: 'Review was not saved successfully.'}
        format.json {render json: @comments.errors, status: :unprocessable_entity }
      end
    end
    # redirect_to product_path(@product)
  end

  def destroy
    @comment = Comment.find(params[:id])
    product = @comment.product
    @comment.destroy
    redirect_to product
  end

  private 

  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end
end
