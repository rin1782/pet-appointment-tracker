class Pet < ApplicationRecord
    belongs_to :User
    has_many :events
    has_many :caretakers, through :events
end
