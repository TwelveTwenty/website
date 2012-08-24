class FixColumnNameGoodyArtwork < ActiveRecord::Migration
  def up
    rename_column :goodies, :thumb, :artwork
  end

  def down
    rename_column :goodies, :artwork, :thumb
  end
end
