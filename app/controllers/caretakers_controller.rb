class CaretakersController < ApplicationController

    def index
        @caretakers = Caretaker.all
    end
    
    def show
        @caretaker = Caretaker.find(params[:id])
    end
    
    def new
        @caretaker = Caretaker.new
    end
    
    def create
        params
        @caretaker = Caretaker.new(caretaker_params)
        @caretaker.title = params[:title]
        @caretaker.save
    end
    
    def edit
        @caretaker = Caretaker.find(params[:id])
        @inputs = Input.all
    end
    
    def update
        @caretaker = Caretaker.find(params[:id])

        if @caretaker.update_attributes(caretaker_params)
            redirect_to :action => 'show', :id => @caretaker
        else
            @inputs = Input.all
            render :action => 'edit'
        end
    end
    
    def delete
        Caretaker.find(params[:id]).destroy
        redirect_to :action => 'index'
    end

    private

    def caretaker_params
        params.require(:caretaker).permit(:title)
    end

end
