class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  def index
    @reservations = Reservation.all
  end

  def show
@reservation = Reservation.find_by(id: params[:id])

  end

 def new
  @expert = Expert.find_by(id: session[:expert_id])
  @reservation = Reservation.new
  end
def create
reservation = current_user.reservations.create reservation_params

  redirect_to booked_path 
end
  def edit 
    @expert = Expert.find_by(id: session[:expert_id])
      @reservation = Reservation.find_by(id: params[:id])
  end
   def update
    reservation = Reservation.find_by(id: params[:id])
    reservation.update(reservation_params)
    redirect_to reservation_path(reservation) 
  end
   def destroy
    reservation = Reservation.find_by(id: params[:id])
    reservation.destroy
    redirect_to user_path(current_user)
  end

private

  def reservation_params
    params.require(:reservation).permit(:expert_id, :firstName, :lastName, :dob, :city, :email, :phone, :pregcase1, :healthproblem, :pregcase2, :motordevelopment, :languagedevelopment, :wordshas, :interventionreceived, :regresskills, :medicalissue, :repetitivebehav, :socialinteraction, :eyecontact, :gesture, :comment)
  end

end



 