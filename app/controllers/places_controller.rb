class PlacesController < ApplicationController
  
  def index
    @places = ["Australia", "Iceland", "Brazil"]
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
  end

  def new
    @place = Place.new
  end

end
