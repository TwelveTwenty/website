class Blog < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  attr_accessible :author, :name, :title, :artwork, :body, :draft, :teaser, :created_at
  mount_uploader :artwork, ImageUploader

end
