class AddIsPublicDomainToArtObjects < ActiveRecord::Migration[5.0]
  def change
    add_column :art_objects, :is_public_domain, :boolean
  end
end
