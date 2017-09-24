class Educational < ApplicationRecord
  enum status: [:active, :inactive]
  enum kind: [:workshop, :lecture, :guidance, :course, :meeting]
  has_many :participant
  has_one :operating_unit
end
