class Medication < ApplicationRecord
  belongs_to :disease
  belongs_to :medicine

  has_many :proceedings, dependent: :restrict_with_error

  enum situation: { 'Falha Administrativa': 0, 'Fora do protocolo': 1, 'Off Label': 2 }
end
