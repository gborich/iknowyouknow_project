class AddDescriptionStringToUserRole < ActiveRecord::Migration[5.2]
  def change
    add_column :user_roles, :description, :string
  end
end
