class CreateGoodies < ActiveRecord::Migration
  def change
    create_table :goodies do |t|
      t.string :title
      t.string :author
      t.string :thumb_url
      t.string :download_url
      t.text :teaser
      t.text :body

      t.timestamps
    end
  end
end
