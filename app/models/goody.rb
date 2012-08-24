class Goody < ActiveRecord::Base
  attr_accessible :author, :body, :download_url, :teaser, :artwork, :title
  mount_uploader :artwork, ImageUploader
end
