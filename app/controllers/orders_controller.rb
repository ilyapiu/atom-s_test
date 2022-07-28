class OrdersController < ApplicationController
before_action :fetch_services, only: %i[new edit]
before_action :set_order!, only: %i[show edit update destroy]

  def index
    @keys = ['По дате', 'ФИО', 'Модель машины', 'Номер машины']

    if @key == 'ФИО'
      @orders = Order.order(client_name: :desc)
    elsif @key == 'Модель машины'
      @orders = Order.order(auto_model: :desc)
    elsif @key == 'Номер машины'
      @orders = Order.order(auto_number: :desc)
    else
      @orders = Order.order(created_at: :desc)
    end
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
    if @order.update order_params
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
