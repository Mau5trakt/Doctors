class AddUniqueIndexToDoctors < ActiveRecord::Migration[7.2]
  def change

    execute <<-SQL
      CREATE UNIQUE INDEX index_specialities_on_lower_medical_code
      ON doctors (LOWER(medical_code));
    SQL

    execute <<-SQL
      CREATE UNIQUE INDEX index_specialities_on_lower_identity_card
      ON doctors (LOWER(identity_card));
    SQL

    execute <<-SQL
      CREATE UNIQUE INDEX index_specialities_on_lower_email
      ON doctors (LOWER(email));
    SQL


  end
end
