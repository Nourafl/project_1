class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
@reservation = Reservation.find_by(id: params[:id])
  end

 def new
@reservation = Reservation.new
  end
def create
reservation = Reservation.create reservation_params
    redirect_to reservation_path(reservation)
  
end
  def edit

  end


end
