class AddReferencesToCategorySubject < ActiveRecord::Migration[5.2]
  def change
    add_reference :category_subjects, :subject_id, foreign_key: true
    add_reference :category_subjects, :category_id, foreign_key: true
  end
end
