class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :alt
      t.string :artwork

      t.timestamps
    end
  end
end
