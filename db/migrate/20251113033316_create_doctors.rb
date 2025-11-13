class CreateDoctors < ActiveRecord::Migration[7.2]
  def change
    create_table :doctors do |t|
      t.string :full_name, null: false
      t.string :medical_code, null: false
      t.string :email, null: false
      t.string :phone_number
      t.string :identity_card, null: false

      t.timestamps
    end

    add_index :doctors, :medical_code, unique: true
    add_index :doctors, :email, unique: true
    add_index :doctors, :identity_card, unique: true


  end
end
