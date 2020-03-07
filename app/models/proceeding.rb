class Proceeding < ApplicationRecord
  belongs_to :patient
  belongs_to :medication
end
