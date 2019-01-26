class RemoveCountryInUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :country
    remove_column :users, :city
  end
end
