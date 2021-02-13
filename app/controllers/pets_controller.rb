class PetsController < ApplicationController

    def new
        @Pet = Pet.new
    end

    def create 
        @pet = Pet.new 
        @pet.name = params[:name]
        @pet.save
        redirect_to_pets_path(@pet)
    end

    def index
    end
end
