class Speciality < ApplicationRecord
  has_many :doctor_specialities, dependent: :destroy
  has_many :doctors, through: :doctor_specialities
  validates :name, 
    uniqueness: { 
      case_sensitive: false, 
      message: "Esta especialidad ya fue registrada" 
    }, 
    presence: {
      message: "Introduzca un nombre para la especialidad"
    }
end
