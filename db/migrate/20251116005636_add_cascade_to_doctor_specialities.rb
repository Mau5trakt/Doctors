class AddCascadeToDoctorSpecialities < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :doctor_specialities, :specialities
    remove_foreign_key :doctor_specialities, :doctors
    

    add_foreign_key :doctor_specialities, :specialities, on_delete: :cascade
    add_foreign_key :doctor_specialities, :doctors, on_delete: :cascade
  end
end
