class EventsController < ApplicationController
    def index
        @pet = Pet.find_by(id: params[:pet_id])
        @events = @pet.events.most_recent
    end

    def new
        @pet = Pet.find_by(id: params[:pet_id])
        @event = Event.new
    end

    def create 
        @pet = Pet.find_by(id: params[:pet_id])
        @event = Event.new(event_params)
        @event.pet_id =  params[:pet_id]
        if @event.save
            redirect_to pet_event_path(@event.pet_id, @event)
        else
            flash.now[:error] = @event.errors.full_messages
            render :new
        end
    end

    def show
        @pet = Pet.find_by(id: params[:pet_id])
        @event = Event.find_by(id: params[:id])

    end

    private

    def event_params
        params.require(:event).permit(:name, :title, :date, :caretaker_id, :pet_id)
    end

end
