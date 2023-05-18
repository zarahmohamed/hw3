class PlacesController < ApplicationController
  
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place["name"] = params["place"]["name"]
    @place.save
    redirect_to "/"
  end

  def show
    @place = Place.find_by("id" => params["id"])
    @post = Post.where("place_id" => @place["id"])
  end

  def destroy
    @place = Place.find_by({ "id" => params["id"] })
  end

end
