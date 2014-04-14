class TracksController < ApplicationController

  skip_before_filter :verify_authenticity_token
  respond_to :html, :json

   # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
    respond_with @tracks
  end

  def new
    @track = Track.new
  end

    # GET /tracks/1/edit
  def edit
    @track = Track.find(params[:id])
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
    @track = Track.find(params[:uri])
    respond_with @track
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = Track.new(track_params)
    @track.save
    respond_with @track
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    respond_with @track
  end

  private
    def track_params
      params.require(:track).permit(:uri, :user_uri)
    end

end