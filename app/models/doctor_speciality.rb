class DoctorSpeciality < ApplicationRecord
  belongs_to :doctor
  belongs_to :speciality

  validates :speciality_id, uniqueness: { scope: :doctor_id }
end
