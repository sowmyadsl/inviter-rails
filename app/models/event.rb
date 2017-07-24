class Event < ApplicationRecord
  has_many :attendees
  validates :name, :description, :date, :presence => true
end
