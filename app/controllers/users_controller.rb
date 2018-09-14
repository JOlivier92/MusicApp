class UsersController < ApplicationController
  def index
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :show
    else
      flash.now[:errors] = @user.errors.full_messages
      render :create
    end
  end

  def show

  end

  private
  def user_params
    params.require(:user).permit(:email,:password)
  end
end
