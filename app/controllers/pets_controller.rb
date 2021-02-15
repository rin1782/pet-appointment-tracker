class PetsController < ApplicationController
    def index
        @pet = current_user.pets
    end

    def new
        @pet = Pet.new
    end

    def create 
        user = current_user
        @pet = user.pets.build(pet_params)
        @pet.save
        redirect_to pets_path
    end

    def show
        @pet = Pet.find(params[:id]) 
    end 

    private

    def pet_params
        params.require(:pet).permit(:name)
    end

end
