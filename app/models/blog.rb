class Blog < ActiveRecord::Base
  attr_accessible :author, :name, :title, :artwork, :body, :draft
  mount_uploader :artwork, ImageUploader
end
