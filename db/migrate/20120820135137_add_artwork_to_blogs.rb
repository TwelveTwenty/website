class AddArtworkToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :artwork, :string
  end
end
