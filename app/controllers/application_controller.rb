class ApplicationController < ActionController::Base
  include ApplicationHelper

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
