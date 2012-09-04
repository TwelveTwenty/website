class AddSlugToGoodies < ActiveRecord::Migration
  def change
    add_column :goodies, :slug, :string
    add_index :goodies, :slug
  end
end
