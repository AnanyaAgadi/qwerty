class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    if params[:q]
      search_term = params[:q]
      @products = Product.search(search_term)
    else
      @products = Product.all
    end  
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

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :image_url, :price)
    end
end

# steps on creating a search option that filters out and gives us appropriate results
# Add the erb for the form using form_with. Mention an attribute for each form field
# Next add that attribute to a params 
# Next that will also be the name of the parameter that gets passed to the index action as our search term.
# We now need to capture our search term and use it to filter our products. 
# In any controller action where data gets passed in with therequest, we can access any parameters in the request using a hash
  # called params.


# PUT POST PATCH 
 
# According to rails convention,

# PUT is used for updating an existing resource

# POST is used for creating a new resource

# In rails 4, PUT has been changed to PATCH to avoid confusion.

# A request using the POST method should act upon the resource collection; adding a new resource to the collection.Example URL: http://example.com/resources

# A request using the PUT HTTP verb should act upon a single resource within the collection; replacing the resource wholly upon the server Example URL: http://example.com/resource/1

# A request using the PATCH HTTP verb should act upon a single resource within the collection; updating certain attributes upon the resource where it stands Example URL: http://example.com/resource/1

# Rails 4 now makes use of the PATCH verb over the PUT verb for updating a resource.