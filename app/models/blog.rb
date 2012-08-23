class Blog < ActiveRecord::Base
  attr_accessible :author, :name, :title, :artwork, :body
  mount_uploader :artwork, ImageUploader
end
