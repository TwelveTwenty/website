class AddShareLinkTextToGoody < ActiveRecord::Migration
  def change
    add_column :goodies, :share_link_text, :string
  end
end
