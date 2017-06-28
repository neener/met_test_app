class AddImageUrlToArtObjects < ActiveRecord::Migration[5.0]
  def change
    add_column :art_objects, :image_url, :string
  end
end
