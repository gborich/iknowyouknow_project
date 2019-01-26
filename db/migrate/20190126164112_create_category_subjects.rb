class CreateCategorySubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :category_subjects do |t|
      t.integer :subject_id
      t.integer :category_id

      t.timestamps
    end
  end
end
