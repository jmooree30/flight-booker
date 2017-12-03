class Flight < ApplicationRecord
	belongs_to :departing_flight, class_name: "Airport", foreign_key: "departing_airport_id"
	belongs_to :arriving_flight, class_name: "Airport", foreign_key: "arrival_airport_id" 
end
