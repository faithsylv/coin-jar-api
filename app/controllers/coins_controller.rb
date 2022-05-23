class CoinsController < ApplicationController
  def index
    coins = Coin.all
    render json: coins
  end

  def create
    coin = Coin.create!(coin_params)
    render status: :created
  end

  def update
    coin = Coin.find(params[:id])
    coin.update!(coin_params)
    render status: :no_content
  end

  def show
    coin = Coin.find(params[:id].to_i)
    render json: coin
  end

  def destroy
    coin = Coin.find(params[:id].to_i)
    coin.destroy
    render status: :no_content
  end

  private
  def coin_params
    params.require(:coin).permit(:jar_id, :user_id, :value, :currency)
  end
end
