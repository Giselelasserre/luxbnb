class FlatsController < ApplicationController

  def index
    @flats = Flat.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @alert_message = "You are viewing #{@flat.name}"
    @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }
    @hash = Gmaps4rails.build_markers(@flat) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def new
    @flat= Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)

    redirect_to flates_path # We'll see that in a moment.
  end

private

  def flat_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:flat).permit(:location, :description, :price, :title)
  end
end
