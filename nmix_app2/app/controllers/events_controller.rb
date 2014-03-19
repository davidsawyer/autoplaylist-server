class EventsController < ApplicationController
  
  skip_before_filter :verify_authenticity_token
  respond_to :html, :json

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    respond_with @events
  end

  def new
    @event = Event.new
  end
  
    # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    respond_with @event
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.save
    respond_with @event
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params.require(:event).permit(:name, :description))
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
    def event_params
      params.require(:event).permit(:name, :description)
    end

end