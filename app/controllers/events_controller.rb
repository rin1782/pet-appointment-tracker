class EventsController < ApplicationController

    def new
        @event = Event.new
        @event.build_caretakers
    end

    def create 
        @event = Event.new(event_params)
        @event.pet_id = session[:pet_id]
        if @event.save!
            redirect_to event_path(@event)
        else
            render :new
        end
    end

    private

    def event_params
        params.require(:event).permit(:name, :date, :caretaker_id, caretaker_attributes: [:title])
    end

end
