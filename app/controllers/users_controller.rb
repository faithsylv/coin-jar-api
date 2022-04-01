class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create!(user_params)
    render status: :created
  end

  def edit
  end

  def show
    user = User.find(params[:id].to_i)
    render json: user
  end

  def destroy
    user = User.find(params[:id].to_i)
    user.destroy
    render json: :no_content
  end

  private
  def user_params
    params.require(:user).permit(:id, :name, :email, :password_digest, :color)
  end
end
