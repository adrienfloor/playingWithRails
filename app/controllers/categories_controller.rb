class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  def index
    @session = session[:user_id]
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(category_params)
    redirect_to category_path(category.id)
  end

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to categories_path

  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:name, :slug)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end
