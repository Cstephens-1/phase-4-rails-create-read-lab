class PlantsController < ApplicationController

    def index 
        plants = Plant.all
        render json: plants
    end

    def show
        render json: Plant.find_by(id: params[:id])
    end

    def create(plant_params)
        plant = Plant.create(plant_params)
        render json: plant, status: "201"
        
    end

    private

    def plant_params
        params.permit(:name, :image, :price )
    end

end
