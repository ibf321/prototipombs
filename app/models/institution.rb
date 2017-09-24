class Institution < ApplicationRecord
	enum status: [:active, :inactive]
	enum cooperation: [:deliver, :not_delivered]
	enum genre: [:both, :male, :female]
	has_many :responsible
	has_one :address
	has_one :operating_unit


end
