class Doctor < ApplicationRecord
  has_many :doctor_specialities, dependent: :destroy
  has_many :specialities, through: :doctor_specialities
end
