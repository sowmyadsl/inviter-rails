class AttendeesController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
  end

  def show
    @event = Event.find(params[:event_id])
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
    @attendee = @event.attendees.create!(attendee_params)
    if @attendee.save
      respond_to do |format|
        format.html { redirect_to events_path }
        format.js
      end
    else
      render :new
    end
  end

  def update
    @event = Event.find(params[:event_id])
    @attendee = @event.attendees.find(params[:id])
    if @attendee.update(attendee_params)
      flash[:notice] = "Attendee successfully updated!"
      respond_to do |format|
        format.html {redirect_to request.env['HTTP_REFERER']}
        format.js 
      end
    else
      render :edit
    end
  end


  def destroy
    @event = Event.find(params[:event_id])
    @attendee = @event.attendees.find(params[:id])
    if @attendee.destroy
      flash[:notice] = "Attendee successfully deleted!"
      # redirect_to request.env['HTTP_REFERER']
      respond_to do |format|
        format.html { redirect_to request.env['HTTP_REFERER'] }
        format.js
      end
    else
      render :new
    end
  end

  private

  def attendee_params
    params.require(:attendee).permit(:name, :email_address)
  end

end
