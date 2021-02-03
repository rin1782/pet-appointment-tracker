class Event < ApplicationRecord
    belongs_to :pets
    belongs_to :caretakers
end
