class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @events = Event.all
    @attendees = Attendee.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:notice] = "Event created successfully!"
      respond_to do |format|
        format.html { redirect_to events_path }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      flash[:notice] = "Event Updated successfully!"
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      flash[:notice] = "Event deleted successfully!"
      redirect_to events_path
    end
  end

  def send_invites
    @event = Event.find(params[:id])
    #I want an invite to be sent to attendee's email address
    @event.attendees.each do |attendee|
      AttendeeMailer.send_invite(@event.name, attendee).deliver
    end
    redirect_to events_path, notice: "Invites sent!"
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :date, :user_id)
  end
end
