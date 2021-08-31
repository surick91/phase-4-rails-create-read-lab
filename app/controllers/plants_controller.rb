class PlantsController < ApplicationController

    def create
        plants = Plant.create(plant_params)
        render json: plants, status: :created
    end
    def index
        plants = Plant.all
        render json:plants
    end

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant, status: :ok
        end 

    private 

    def plant_params
        params.permit(:name, :image, :price)
    end
end
