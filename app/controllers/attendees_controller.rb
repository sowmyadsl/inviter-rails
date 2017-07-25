class AttendeesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @event = Event.find(params[:event_id])
    @attendee = Attendee.new
  end

  def create
  end

end
