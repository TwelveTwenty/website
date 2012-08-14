class CreateBlogs < ActiveRecord::Migration
  def up
    create_table :blogs do |t|
      t.string :name
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
