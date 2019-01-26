class AddReferencesToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :student_id, foreign_key: true
    add_reference :orders, :service_id, foreign_key: true
  end
end
