class AddUniqueIndexToSpecialityName < ActiveRecord::Migration[7.2]
  def change

    execute <<-SQL
      CREATE UNIQUE INDEX index_specialities_on_lower_name
      ON specialities (LOWER(name));
    SQL
  end
end
