class Event < ApplicationRecord
    belongs_to :pets
    belongs_to :caretakers
    accepts_nested_attributes_for :caretakers
end
