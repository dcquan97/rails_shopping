class UsersController < ApplicationController
before_action :authenticate_user!

  layout 'application'


  def index
  end

  def new
    # @user = User.new user_params
    redirect_to users_path
  end

  def show
    redirect_to root_path
  end

  # def create
  #   @user = User.new user_params
  #   if @user.save
  #     flash[:success] = "Register success"
  #     redirect_to users_path
  #   else
  #     flash[:success] = "Register failed"
  #     render :new
  #   end
  # end

  private
  def user_params
    params.require(:user).permit :email, :username, :password, :password_confirmation
  end
end
