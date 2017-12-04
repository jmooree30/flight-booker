class BookingsController < ApplicationController
	def index
	end 

	def new
		@flight = Flight.find_by(id: params[:flight_id])
		@booking = Booking.new
	end 

	def create
		
	end 
end
