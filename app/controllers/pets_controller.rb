class PetsController < ApplicationController

    def new
        @Pet = Pet.new
    end

    def create 
        @pet = Pet.new 
        @pet.name = params[:name]
        @pet.save
       
        redirect_to pets_path(@pet)
    end

    def index
        @pet = Pet.all
    end

    def show
        @pet = Pet.find(params[:id]) 
    end 
end
