class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :description
      t.string :rating
      t.string :awards

      t.timestamps
    end
  end
end
