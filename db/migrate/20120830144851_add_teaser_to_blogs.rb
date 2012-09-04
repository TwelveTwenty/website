class AddTeaserToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :teaser, :string
  end
end
