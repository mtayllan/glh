class Medication < ApplicationRecord
  belongs_to :disease
  belongs_to :medicine

  has_many :proceedings, dependent: :restrict_with_error

  enum situation: { 'T1': 0, 'T2': 1, 'T3': 2 }
end
