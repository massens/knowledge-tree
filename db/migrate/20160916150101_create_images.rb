class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_id
      t.string :image_filename
      t.integer :image_size
      t.string :image_content_type

      t.timestamps null: false
    end
  end
end
