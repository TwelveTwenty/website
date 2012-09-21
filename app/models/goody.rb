class Goody < ActiveRecord::Base

  attr_accessible :author, :share_link_text, :body, :download_url, :share_text, :teaser, :artwork, :call_to_action_artwork, :homepage_artwork, :title, :draft, :call_to_action_header, :call_to_action_teaser, :has_call_to_action, :created_at

  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :artwork, ImageUploader
  mount_uploader :call_to_action_artwork, ImageUploader
  mount_uploader :homepage_artwork, ImageUploader
end
