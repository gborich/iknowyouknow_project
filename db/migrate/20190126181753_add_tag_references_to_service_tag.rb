class AddTagReferencesToServiceTag < ActiveRecord::Migration[5.2]
  def change
    add_reference :service_tags, :tag_id, foreign_key: true
  end
end
