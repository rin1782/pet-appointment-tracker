class PetsController < ApplicationController

    def new
        @Pet = Pet.new
    end
end
