class Blog < ActiveRecord::Base
  attr_accessible :author, :name, :title, :artwork, :body, :draft, :teaser
  mount_uploader :artwork, ImageUploader
end
