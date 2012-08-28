class HomeController < ApplicationController
  def index
    @blogs = Blog.all :limit => 2
    @goody = Goody.first
  end
end
