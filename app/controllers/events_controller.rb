class EventsController < ApplicationController

  before_action :set_event, except: [:index, :new, :create, :date]

  def index
    @events = Event.all.order(created_at: :desc)
    @today = Time.now.day
  end

  def new
    @event = Event.new
  end

  def date
    @event = Event.new
  end

  def preview
  end

  def event_info
  end

  def create
    @event = Event.new(permitted_params)
    @event.save
    redirect_to events_path
  end

  def update
    @event.update(permitted_params)
    redirect_to events_path
  end

  private

  def permitted_params
    params.require(:event).permit!
  end

  def set_event
    @event = Event.find(params[:id])
  end

end