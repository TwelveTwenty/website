class Goody < ActiveRecord::Base

  attr_accessible :author, :body, :download_url, :teaser, :artwork, :call_to_action_artwork, :title, :draft, :call_to_action_header, :call_to_action_teaser, :has_call_to_action, :created_at

  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :artwork, ImageUploader
  mount_uploader :call_to_action_artwork, ImageUploader
end
