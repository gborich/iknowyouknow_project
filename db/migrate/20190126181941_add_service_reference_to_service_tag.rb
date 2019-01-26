class AddServiceReferenceToServiceTag < ActiveRecord::Migration[5.2]
  def change
    add_reference :service_tags, :service_id, foreign_key: true
  end
end
