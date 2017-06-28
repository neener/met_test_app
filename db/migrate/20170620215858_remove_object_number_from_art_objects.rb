class RemoveObjectNumberFromArtObjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :art_objects, :object_number, :string
  end
end
