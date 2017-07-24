class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Event created successfully!"
      redirect_to events_path
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

  private
  def event_params
    params.require(:event).permit(:name, :description, :date, :start)
  end
end
