class AddBodyToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :body, :text
  end
end
