class AddUserReferenceToCountry < ActiveRecord::Migration[5.2]
  def change
    add_reference :countries, :user_id, foreign_key: true
  end
end
