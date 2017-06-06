class CreateArtObjects < ActiveRecord::Migration[5.0]
  def change
    create_table :art_objects do |t|
      t.string :department
      t.string :title

      t.timestamps
    end
  end
end
