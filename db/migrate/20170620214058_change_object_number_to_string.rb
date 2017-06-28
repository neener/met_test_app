class ChangeObjectNumberToString < ActiveRecord::Migration[5.0]
  def change
  	change_column(:art_objects, :object_number, :string)
  end
end
