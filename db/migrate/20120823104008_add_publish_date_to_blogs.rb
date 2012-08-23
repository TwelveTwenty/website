class AddPublishDateToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :publish_date, :datetime
  end
end
