class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :alt
      t.string :artwork

      t.timestamps
    end
  end
end
