class AddIsHighlightToArtObjects < ActiveRecord::Migration[5.0]
  def change
    add_column :art_objects, :is_highlight, :boolean
  end
end
