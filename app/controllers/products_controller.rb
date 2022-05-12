class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(strong_params)
    redirect_to products_path

  end

  def edit
  end

  def update
    @product.update(strong_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def strong_params
    params.require(:product).permit(:name, :code, :stock, :category)
  end

  def set_product
    @product = Product.find(params[:id])
  end


end
