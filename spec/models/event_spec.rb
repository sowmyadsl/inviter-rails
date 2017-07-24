require 'rails_helper'


RSpec.describe Event do
  it { should validate_presence_of :name }
  it {should validate_presence_of :description }
  it {should validate_presence_of :date }
end
