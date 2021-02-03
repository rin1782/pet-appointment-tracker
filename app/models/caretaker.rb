class Caretaker < ApplicationRecord
    has_many :events
    has_many :pets, through :events
end
