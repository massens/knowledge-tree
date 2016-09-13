class AddUserIdToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :user_id, :integer
  end
end
