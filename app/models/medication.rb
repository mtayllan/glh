class Medication < ApplicationRecord
  belongs_to :disease
  belongs_to :medicine

  has_many :proceedings, dependent: :restrict_with_error
end
