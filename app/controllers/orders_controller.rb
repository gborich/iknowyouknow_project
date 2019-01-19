class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @orders = Order.new
  end

  def create
    @order = Order.create(status: params[:order][:status], comment: params[:order][:comment])
    if @order.errors.any?
      flash[:notice] = 'Enter your data one more time'
      render 'new'
    else
      flash[:notice] = 'order was created successfully'
      redirect_to orders_path
    end
  end

  def show
    @orders = Order.all
  end
end
