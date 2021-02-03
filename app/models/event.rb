class Event < ApplicationRecord
    has_many :pets
    has_many :caretakers
end
