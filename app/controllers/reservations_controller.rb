class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
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
reservation = current_user.reservations.create reservation_params

  redirect_to services_path 
end
  def edit 

  end
private

  def reservation_params
    params.require(:reservation).permit(:firstName, :lastName, :dob, :city, :email, :phone, :pregcase1, :healthproblem, :pregcase2, :motordevelopment, :languagedevelopment, :wordshas, :interventionreceived, :regresskills, :medicalissue, :repetitivebehav, :socialinteraction, :eyecontact, :gesture, :comment)
  end

end
