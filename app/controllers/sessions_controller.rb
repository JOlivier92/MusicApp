class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.find_by_credentials(params[:user][:email],
                                    params[:user][:password])
    if user.nil?
      #flash.now[:errors] = @user.errors.full_messages
      redirect_to new_session_url
    else
      render json: "welcome #{user.email}"
    end
  end

  def destroy
  end
end
