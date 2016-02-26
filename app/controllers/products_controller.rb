class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end


  # GET /products/iwatch
  # GET /products/iwatch.json
  def iWatchIndex
    @products = Product.where(category: 'iwatch')
    respond_to do |format|
      format.html { render 'products/iWatchIndex'}
      format.json { render json: @product, status: :ok }
    end
  end


  # GET /products/iphone
  # GET /products/iphone.json
  def iPhoneIndex
    @products = Product.where(category: 'iphone')
    respond_to do |format|
      format.html { render 'products/iPhoneIndex'}
      format.json { render json: @product, status: :ok }
    end
  end



  # POST /products/1/comment
  # POST /products/1/comment.json
  def add_comment
    @comment = @product.comments.new(comment_params)
    @comment.product = @product
    @comment.ip_address = request.remote_ip.to_s

   
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end




  # GET /products/1
  # GET /products/1.json
  def show
    @comments = @product.comments.where.not(description: "").order("created_at desc").limit(10)
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :price)
    end

    def comment_params
      params.require(:comment).permit(:name, :description, :rating)
    end
end
