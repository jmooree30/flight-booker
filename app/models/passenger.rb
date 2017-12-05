class Passenger < ApplicationRecord
	  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
	  validates :name, presence: true, length: { maximum: 20 }
	  belongs_to :booking, optional: true
      has_one :flight, through: :booking
end
