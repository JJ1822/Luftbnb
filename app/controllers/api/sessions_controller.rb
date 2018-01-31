class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_cred(user_params[:email], user_params[:password])
    if @user
      login(@user)
      render "api/users/show"
    else
      render json: ["Invalid login information"], status: 404
    end
  end

  def destroy
    @user = current_user
    if @user
      logout
      render json: {}
    else
      render json: ["No user found"], status: 404
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
