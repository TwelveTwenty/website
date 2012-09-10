class AddBooleanForCallToActionFieldsToGoody < ActiveRecord::Migration
  def change
    add_column :goodies, :has_call_to_action, :boolean
  end
end
