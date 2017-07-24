class Event < ApplicationRecord
  validates :name, :description, :date, :start, :presence => true
end
