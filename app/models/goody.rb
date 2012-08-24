class Goody < ActiveRecord::Base
  attr_accessible :author, :body, :download_url, :teaser, :thumb, :thumb_cache, :title
  mount_uploader :thumb, ImageUploader
end
