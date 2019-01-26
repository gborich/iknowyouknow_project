class AddTeacherReferenceToService < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :teacher_id, foreign_key: true
  end
end
