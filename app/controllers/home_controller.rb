class HomeController < ApplicationController
  def index
    @blogs = Blog.all :limit => 2
    @goodies = Goody.all :limit => 3
  end
end
