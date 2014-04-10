class UsersController < ApplicationController

  skip_before_filter :verify_authenticity_token
  respond_to :html, :json

   # GET /users
  # GET /users.json
  def index
    @users = User.all
    respond_with @users
  end

  def new
    @user = User.new
  end

    # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    respond_with @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.save
    respond_with @user
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params.require(:user).permit(:event_id))
    respond_with @user
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_with @user
  end

  private
    def user_params
      params.require(:user).permit(:uri, :event_id)
    end

end