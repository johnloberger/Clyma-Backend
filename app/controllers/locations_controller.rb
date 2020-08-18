class LocationsController < ApplicationController

  def create
    location = Location.create(name: params[:name], user_id: params[:user_id], lat: params[:lat], lng: params[:lng])
    render json: location
  end

  def show
    location = Location.find(params:[id])
    render json: location
  end
  
  def index
    users = Location.all 
    render json: users
  end

  def destroy
    location = Location.find(params[:id])
    location.destroy
    render json: location
  end

end
