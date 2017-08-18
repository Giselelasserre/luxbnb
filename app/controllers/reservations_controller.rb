class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @flat = Flat.find(params[:flat_id])
    @reservation.flat = @flat
    @reservation.user = current_user

    if @reservation.save
      redirect_to flat_path(@flat), notice: "Reservation created!"
    else
      flash.now[:alert] = @reservation.errors.full_messages.join(', ')
      render "flats/show"
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:starting, :final)
  end
end
