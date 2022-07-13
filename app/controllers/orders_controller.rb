class OrdersController < ApplicationController
before_action :fetch_services, only: %i[new]
  
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

  private

  def order_params
    params.require(:order).permit(:client_name, :car_model, :car_number, service_ids: [])
  end

  def fetch_services
    @services=Service.all
  end
end
