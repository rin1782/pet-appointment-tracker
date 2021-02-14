class EventsController < ApplicationController

    def new
        @pet = Pet.find_by(id: params[:pet_id])
        @event = Event.new
    end

    def create 
        @event = Event.new(event_params)
        @event.pet_id =  params[:pet_id]
        if @event.save
            redirect_to pet_event_path(@event.pet_id, @event)
        else
            render :new
        end
    end

    def show
        @pet = Pet.find_by(id: params[:id])
        @event = Event.find_by(id: params[:id])
    end

    private

    def event_params
        params.require(:event).permit(:name, :title, :date, :caretaker_id, :pet_id)
    end

end
