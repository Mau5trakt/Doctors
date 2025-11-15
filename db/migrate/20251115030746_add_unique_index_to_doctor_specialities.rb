class AddUniqueIndexToDoctorSpecialities < ActiveRecord::Migration[7.2]
  def change
    add_index :doctor_specialities, [:doctor_id, :speciality_id], unique: true
  end
end
