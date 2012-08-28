class Goody < ActiveRecord::Base
  attr_accessible :author, :body, :download_url, :teaser, :artwork, :title, :draft
  mount_uploader :artwork, ImageUploader
end
