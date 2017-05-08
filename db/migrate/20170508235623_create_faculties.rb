class CreateFaculties < ActiveRecord::Migration[5.1]
  def change
    create_table :faculties do |t|
      t.integer :university_id
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
