class Event < ApplicationRecord
    belongs_to :pet
    belongs_to :caretaker
end
