class AddUserReferenceToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_reference :teachers, :user_id, foreign_key: true
  end
end
