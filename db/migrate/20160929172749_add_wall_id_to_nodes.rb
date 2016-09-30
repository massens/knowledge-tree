class AddWallIdToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :wall_id, :integer
  end
end
