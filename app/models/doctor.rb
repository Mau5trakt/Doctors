class Doctor < ApplicationRecord
  has_many :doctor_specialities, dependent: :destroy
  has_many :specialities, through: :doctor_specialities

  accepts_nested_attributes_for :doctor_specialities, allow_destroy: true

  validates :full_name,
  presence: {
    message: "Debe ingresar el nombre del doctor"
  }

validates :medical_code,
  presence: { message: "Debe ingresar el código médico" },
  uniqueness: { case_sensitive: false , message: "Ya existe un doctor con este código médico" }

validates :email,
  presence: { message: "Debe ingresar un correo electrónico" },
  format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: "Debe ingresar un correo válido"
  },
  uniqueness: { case_sensitive: false, message: "Este correo ya está registrado" }

validates :identity_card,
  presence: { message: "Debe ingresar la cédula" },
  uniqueness: { case_sensitive: false, message: "Esta cédula ya está registrada" }
end
