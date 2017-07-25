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
    @event = Event.find(params[:event_id])
    @attendee = @event.attendees.new(attendee_params)
    if @attendee.save
      flash[:notice] = "Attendee successfully added!"
      redirect_to request.env['HTTP_REFERER']
    else
      render :new
    end
  end

  private

  def attendee_params
    params.require(:attendee).permit(:name, :email_address, :event_id)
  end

end
