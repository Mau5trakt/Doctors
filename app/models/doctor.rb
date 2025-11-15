class Doctor < ApplicationRecord
  has_many :doctor_specialities
  has_many :specialities, through: :doctor_specialities
end
