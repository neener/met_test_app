class AddObjectIdToArtObjects < ActiveRecord::Migration[5.0]
  def change
    add_column :art_objects, :object_id, :integer
  end
end
