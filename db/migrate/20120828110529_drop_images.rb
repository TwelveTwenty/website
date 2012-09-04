class DropImages < ActiveRecord::Migration
  def up
    drop_table :images
  end

  def down
    create_table :images do |t|
      t.string :alt
      t.string :artwork

      t.timestamps
    end
  end
end
