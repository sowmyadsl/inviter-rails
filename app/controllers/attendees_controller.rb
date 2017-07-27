class AttendeesController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
  end

  def show
    @event = Event.find(params[:event_id])
    @attendee = Attendee.all
  end

  def new
    @event = Event.find(params[:event_id])
    @attendee = Attendee.new
  end

  def edit
    @event = Event.find(params[:event_id])
    @attendee = @event.attendees.find(params[:id])
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

  def update
    @event = Event.find(params[:event_id])
    @attendee = @event.attendees.find(params[:id])
    if @attendee.update(attendee_params)
      flash[:notice] = "Attendee successfully updated!"
      redirect_to request.env['HTTP_REFERER']
    else
      render :edit
    end
  end


  def destroy
    @event = Event.find(params[:event_id])
    @attendee = @event.attendees.find(params[:id])
    if @attendee.destroy
      flash[:notice] = "Attendee successfully deleted!"
      redirect_to request.env['HTTP_REFERER']
    else
      render :new
    end
  end

  private

  def attendee_params
    params.require(:attendee).permit(:name, :email_address)
  end

end
