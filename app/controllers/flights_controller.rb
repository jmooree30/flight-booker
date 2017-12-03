class FlightsController < ApplicationController

	def index
		@depart = Airport.all.map{ |u| [ u.full_name, u.id ] }
		@passengers = [1,2,3,4]
		@dates = Flight.all.map{ |u| [u.depature_date, u.id]}

		if params[:departing_airport_id]
			@exist = Flight.where(departing_airport_id: params[:departing_airport_id],
				arrival_airport_id: params[:arriving_airport_id])
			@flights = @exist.all
		end
	end

end
