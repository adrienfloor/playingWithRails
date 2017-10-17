class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]
  def index
    @pizzas = Pizza.all
  end

  def show
  end

  def new
    @pizza = Pizza.new
  end

  def create
    pizza = Pizza.create(pizza_params)
    redirect_to pizzas_path
  end

  def edit
  end

  def update
    @pizza.update(pizza_params)
    redirect_to pizzas_path
  end

  def destroy
    @pizza.destroy
    redirect_to pizzas_path
  end

  private
  def pizza_params
    params.require(:pizza).permit(:name, :description)
  end

  def set_pizza
    @pizza = Pizza.find(params[:id])
  end

end
