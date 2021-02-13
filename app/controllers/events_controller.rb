class EventsController < ApplicationController

    def new
        @pet = Pet.find(params[:pet_id])
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
        find the pet and find the event 
        display  it on the html
    end

    private

    def event_params
        params.require(:event).permit(:name, :date, :caretaker_id)
    end

end
