class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :login
      t.string :password
      t.string :mail
      t.string :age
      t.string :rating
      t.string :awards
      t.string :phone
      t.string :description
      t.string :country
      t.string :city
      t.string :admin

      t.timestamps
    end
  end
end
