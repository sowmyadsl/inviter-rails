class Event < ApplicationRecord
  has_many :attendees
  belongs_to :user
  validates :name, :description, :date, :presence => true
end
