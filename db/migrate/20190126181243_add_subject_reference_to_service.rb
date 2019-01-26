class AddSubjectReferenceToService < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :subject_id, foreign_key: true
  end
end
