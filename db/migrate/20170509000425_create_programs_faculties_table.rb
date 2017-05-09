class CreateProgramsFacultiesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :programs_faculties do |t|
      t.integer :program_id
      t.integer :faculty_id
      t.timestamps
    end
  end
end
