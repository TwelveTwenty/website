class AddDraftToGoodies < ActiveRecord::Migration
  def change
    add_column :goodies, :draft, :boolean
  end
end
