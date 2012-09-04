class Goody < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  attr_accessible :author, :body, :download_url, :teaser, :artwork, :title, :draft, :created_at
  mount_uploader :artwork, ImageUploader
end
