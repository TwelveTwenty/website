class AddShareTextToGoody < ActiveRecord::Migration
  def change
    add_column :goodies, :share_text, :string
  end
end
