class Goody < ActiveRecord::Base
  attr_accessible :author, :body, :download_url, :teaser, :thumb_url, :title
end
