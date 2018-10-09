class Api::SessionController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user 
      login(@user)
      render 'api/users/show'
    else 
      render json: ['Invalid username/password combination'], status: 401
    end 
  end

  def destroy
    if current_user
      log_out
      render {}
    else
      render json: ['You haven\'t logged in yet!'], status: 404
    end 
  end
end
