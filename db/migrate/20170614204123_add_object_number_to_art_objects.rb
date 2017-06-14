class AddObjectNumberToArtObjects < ActiveRecord::Migration[5.0]
  def change
    add_column :art_objects, :object_number, :integer
  end
end
