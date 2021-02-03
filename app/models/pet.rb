class Pet < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :caretakers, through :events
end
