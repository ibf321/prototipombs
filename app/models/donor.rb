class Donor < ApplicationRecord
  enum status: [:active, :inactive]
  enum kind: [:systematic, :eventual]
  enum disclosure: [:yes, :not]
  has_one :address
  has_one :responsible
  has_one :operating_unit

  # has_many :responsible
  # has_one :address
  # has_one :withdrawal
  # has_one :additional
end
