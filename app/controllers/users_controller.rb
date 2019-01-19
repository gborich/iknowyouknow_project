class UsersController < ApplicationController
  before_action :check_login, only: [:show, :new, :create, :index]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user][:name], lastname: params[:user][:lastname], login: params[:user][:login], password: params[:user][:password], age: params[:user][:age], description: params[:user][:description], country: params[:user][:country], city: params[:user][:city], mail: params[:user][:mail], phone: params[:user][:phone], awards: params[:user][:awards])
    if @user.errors.any?
      flash[:notice] = 'Enter your data one more time'
      render 'new'
    else
      flash[:notice] = 'User was created successfully'
      redirect_to root_path
    end
  end

  def show

  end

  def signin

  end

  def login
    u = User.find_by_name(params[:user][:name])
    if u && u.password == params[:user][:password]
      flash[:notice] = 'You were logged in successfully'
      login_user(u)
      redirect_to root_path
    else
      flash[:notice] = 'Password or user is incorrect'
      redirect_to signin_path
    end
  end

  def check_login
    redirect_to signin_path unless logged_in?
  end
end

