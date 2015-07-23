class UsersController < ApplicationController
  include Login

  def index
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def show
  end


  private
   
    def set_user
      @user = User.find(params[:id])
    end

    
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
