class FixColumnNameGoodyThumb < ActiveRecord::Migration
  def up
    rename_column :goodies, :thumb_url, :thumb
  end

  def down
    rename_column :goodies, :thumb, :thumb_url
  end
end
