class CampersController < ApplicationController

    def index 
        render json: Camper.all
    end

    def show 
        camper = Camper.find(params[:id])
        render json: camper, serializer: CamperActivitySerializer
    end

    def create 
        render json: Camper.create!(camper_params), status: :created
    end

    private 

    def camper_params
        params.permit(:name, :age)
    end

end
