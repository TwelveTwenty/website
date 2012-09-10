class AddCallToActionFieldsToGoody < ActiveRecord::Migration
  def change
    add_column :goodies, :call_to_action_header, :string
    add_column :goodies, :call_to_action_teaser, :string
  end
end
