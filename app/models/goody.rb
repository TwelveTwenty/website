class Goody < ActiveRecord::Base
  attr_accessible :author, :body, :download_url, :teaser, :thumb, :title
  mount_uploader :thumb, ImageUploader
end
