class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(name: params[:category][:name], description: params[:category][:description])
    if @category.errors.any?
      flash[:notice] = 'Enter your data one more time'
      render 'new'
    else
      flash[:notice] = 'subject was created successfully'
      redirect_to categories_path
    end
  end

  def show
    @category = Category.all
  end
end
