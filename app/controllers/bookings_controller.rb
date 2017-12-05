class BookingsController < ApplicationController
	def index
	end 

	def new
		@flight = Flight.find_by(id: params[:flight_id])
		@booking = Booking.new
	end 

	def create
        @flight = Flight.find_by(id: booking_params[:flight_id])
        @booking = @flight.bookings.build(booking_params)
        if @booking.save
        	redirect_to @booking
          flash[:info] = "Booking successful"
        else
          flash[:error] = "Invalid name/email, please try again."
          redirect_to root_path
        end 
	end 

	def show
      @booking = Booking.find(params[:id])
      @passengers = @booking.passengers.all
      @departing = Airport.find(@booking.flight.departing_airport_id)
      @arriving = Airport.find(@booking.flight.arrival_airport_id)
	end

	def booking_params
    params.require(:booking).permit(
      :flight_id,
      passengers_attributes:[:id, :name, :email])
    end
end
