class Defense < ApplicationRecord
  belongs_to :proceeding

  has_one_attached :document
end
