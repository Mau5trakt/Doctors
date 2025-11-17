# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



specialities = [
  { name: "Cardiología", description: "Estudia y trata las enfermedades del corazón y del sistema circulatorio." },
  { name: "Dermatología", description: "Se encarga del diagnóstico y tratamiento de las enfermedades de la piel." },
  { name: "Pediatría", description: "Especialidad médica dedicada a la atención de niños y adolescentes." },
  { name: "Neurología", description: "Estudia y trata los trastornos del sistema nervioso." },
  { name: "Oftalmología", description: "Se encarga del diagnóstico y tratamiento de las enfermedades del ojo." },
  { name: "Ginecología", description: "Se ocupa de la salud del sistema reproductor femenino y del embarazo." },
  { name: "Traumatología", description: "Especialidad médica que trata lesiones del sistema musculoesquelético." },
  { name: "Psiquiatría", description: "Se encarga del diagnóstico y tratamiento de los trastornos mentales." },
  { name: "Endocrinología", description: "Estudia las glándulas y hormonas y sus trastornos." },
  { name: "Otorrinolaringología", description: "Se encarga de las enfermedades de oído, nariz y garganta." }
]

specialities.each do |s|
  Speciality.create!(s)
end


doctors = [
  { full_name: "Juan Pérez", medical_code: "AAAA", email: "juan@perez.com", phone_number: "1234", identity_card: "11111111" },
  { full_name: "María López", medical_code: "BBBB", email: "maria@lopez.com", phone_number: "1234", identity_card: "22222222" },
  { full_name: "Carlos Gómez", medical_code: "CCCC", email: "carlos@gomez.com", phone_number: "1234", identity_card: "33333333" },
  { full_name: "Ana Martínez", medical_code: "DDDD", email: "ana@martinez.com", phone_number: "1234", identity_card: "44444444" },
  { full_name: "Luis Rodríguez", medical_code: "EEEE", email: "luis@rodriguez.com", phone_number: "1234", identity_card: "55555555" },
  { full_name: "Sofía Fernández", medical_code: "FFFF", email: "sofia@fernandez.com", phone_number: "1234", identity_card: "66666666" },
  { full_name: "Miguel Torres", medical_code: "GGGG", email: "miguel@torres.com", phone_number: "1234", identity_card: "77777777" },
  { full_name: "Isabel Ramírez", medical_code: "HHHH", email: "isabel@ramirez.com", phone_number: "1234", identity_card: "88888888" },
  { full_name: "Jorge Castillo", medical_code: "IIII", email: "jorge@castillo.com", phone_number: "1234", identity_card: "99999999" },
  { full_name: "Laura Morales", medical_code: "JJJJ", email: "laura@morales.com", phone_number: "1234", identity_card: "10101010" },
  { full_name: "Ricardo Sánchez", medical_code: "KKKK", email: "ricardo@sanchez.com", phone_number: "1234", identity_card: "11121314" },
  { full_name: "Elena Jiménez", medical_code: "LLLL", email: "elena@jimenez.com", phone_number: "1234", identity_card: "15161718" }
]

doctors.each do |d|
  Doctor.create!(d)
end


Doctor.all.each_with_index do |doctor, index|
  
  doctor.specialities << Speciality.find((index % 10) + 1)
  doctor.specialities << Speciality.find(((index + 1) % 10) + 1) if index.even?
end