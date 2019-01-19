class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def create
    @service = Service.create(name: params[:service][:name], price: params[:service][:price], description: params[:service][:description])
    if @service.errors.any?
      flash[:notice] = 'Enter your data one more time'
      render 'new'
    else
      flash[:notice] = 'service was created successfully'
      redirect_to services_path  end
  end

  def new
    @service = Service.new
  end

  def show
    @services = Service.all
  end
end
