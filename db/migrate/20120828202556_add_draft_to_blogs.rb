class AddDraftToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :draft, :boolean
  end
end
