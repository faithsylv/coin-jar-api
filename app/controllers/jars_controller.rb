class JarsController < ApplicationController
    def index
      jars = Jar.all
      render json: {
        jars: jars.map {|jar| ::JarPresenter.new(jar).provide_with_balance}
      }, status: :ok
    end
  
    def create
      jar = Jar.create!(jar_params)
      render status: :created
    end
  
    def update
      jar = Jar.find(params[:id])
      jar.update!(jar_params)
      render status: :no_content
    end
  
    def show
      jar = Jar.find(params[:id].to_i)
      render json: jar
    end
  
    def destroy
      jar = Jar.find(params[:id].to_i)
      jar.destroy
      render status: :no_content
    end
  
    private
    def jar_params
      params.require(:jar).permit(:name, :description, :currency, user_ids: [])
    end
  end
  