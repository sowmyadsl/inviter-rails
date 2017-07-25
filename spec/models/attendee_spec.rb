require 'rails_helper'

describe Attendee, type: :model do
  it { should validate_presence_of :name }
  it {should validate_presence_of :email_address }
end
