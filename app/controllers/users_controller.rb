class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user][:name], lastname: params[:user][:lastname], login: params[:user][:login], password: params[:user][:password], age: params[:user][:age], description: params[:user][:description], mail: params[:user][:mail], phone: params[:user][:phone], awards: params[:user][:awards])
    if @user.errors.any?
      flash[:notice] = 'Enter your data one more time'
      render 'new'
    else
      flash[:notice] = 'User was created successfully'
      redirect_to root_path
    end
  end

  def show
    @users = User.all
  end

  def signin

  end

  def main
    @users = User.all
    @subjects = Subject.all
    @services = Service.all
    @orders = Order.all
    @category = Category.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(name: params[:user][:name], lastname: params[:user][:lastname], login: params[:user][:login], password: params[:user][:password], age: params[:user][:age], description: params[:user][:description], mail: params[:user][:mail], phone: params[:user][:phone], awards: params[:user][:awards])
    redirect_to users_path
  end

  def delete
    User.find(params[:id]).destroy
    redirect_to champions_path
  end

end

