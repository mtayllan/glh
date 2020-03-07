class Disease < ApplicationRecord
  has_many :medications, dependent: :destroy
  has_many :medicines, through: :medications
end
