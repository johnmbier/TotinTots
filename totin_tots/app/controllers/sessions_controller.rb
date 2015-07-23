class SessionsController < ApplicationController
   include Login
  # skip_before_action :authorize

  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      flash[:success] = "Success! Logged in as #{user.name}."
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:danger] = "You have entered an incorrect username/password combination. Please try again."
      redirect_to login_path
    end
  end


  # def create
  #   user = User.find_by(name: params[:name])
  #   if user and user.authenticate(params[:password])
  #     session[:user_id] = params[:name] 
  #     login(user)
  #     redirect_to root_path
  #   else
  #     flash[:error] = "FAIL"
  #     render :new
  #   end
  # end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end
end
