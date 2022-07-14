class OrdersController < ApplicationController
before_action :fetch_services, only: %i[new]
before_action :set_order!, only: %i[show edit update destroy]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new 
  end
  
  def create
    @order = Order.new order_params

    if @order.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @order.destroy
    redirect_to root_path
  end

  def show ; end

  def edit ; end

  def update
    if @order.update
      redirect_to root_path
    else
      render :edit
    end
  end 
  private

  def order_params
    params.require(:order).permit(:client_name, :car_model, :car_number, service_ids: [])
  end

  def fetch_services
    @services=Service.all
  end

  def set_order!
    @order = Order.find(params[:id])
  end
end
