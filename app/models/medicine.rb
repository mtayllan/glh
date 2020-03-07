class Medicine < ApplicationRecord
  has_many :medications, dependent: :destroy
  has_many :diseases, through: :medications

  validates :name, :composition, :description, :group, presence: true

  enum group: { 'Grupo 1A': 0, 'Grupo 1B': 1, 'Grupo 2': 2, 'Grupo 3': 3 }
end
