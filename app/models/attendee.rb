class Attendee < ApplicationRecord
  belongs_to :event
  validates :name, :email_address, :presence => true
end
