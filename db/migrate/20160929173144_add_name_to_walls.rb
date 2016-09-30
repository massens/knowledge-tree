class AddNameToWalls < ActiveRecord::Migration
  def change
    add_column :walls, :name, :string
  end
end
