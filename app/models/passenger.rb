class Passenger < ApplicationRecord
	  belongs_to :booking, optional: true
      has_one :flight, through: :booking
end
