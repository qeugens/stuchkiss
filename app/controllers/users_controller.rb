class UsersController < ApplicationController
  def index
    users = User.all
    if users
      render json: {status: "SUCCESS", message: "All users ready", data: users}, status: :ok
    else
      render json: users.errors, status: :bad_request
    end
  end

  def create
    user = User.create(user_param)
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_param)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content, status: :ok
  end

  private
  def user_param
    params.require(:user).permit(:username, :email, :isadmin, :description, :avatar)
  end

end
