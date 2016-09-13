class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
