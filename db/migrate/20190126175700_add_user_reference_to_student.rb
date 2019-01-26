class AddUserReferenceToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :user_id, foreign_key: true
  end
end
