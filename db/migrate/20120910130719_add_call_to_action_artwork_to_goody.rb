class AddCallToActionArtworkToGoody < ActiveRecord::Migration
  def change
    add_column :goodies, :call_to_action_artwork, :string
  end
end
