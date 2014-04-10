class EventsController < ApplicationController
  #! before_action :set_event, only: [:show, :edit, :update, :destroy]

  skip_before_filter :verify_authenticity_token
  respond_to :html, :json

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    respond_with @events
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    respond_with @event
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.save
    respond_with @event
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_with @event
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params[:event]
    end

end