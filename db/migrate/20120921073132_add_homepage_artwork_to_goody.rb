class AddHomepageArtworkToGoody < ActiveRecord::Migration
  def change
    add_column :goodies, :homepage_artwork, :string
  end
end
