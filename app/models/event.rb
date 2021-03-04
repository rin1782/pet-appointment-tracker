class Event < ApplicationRecord
    belongs_to :pet
    belongs_to :caretaker
    validates :name, presence: true
    validates :date, presence: true

    scope :most_recent, -> { order(created_at: :desc) }

end


