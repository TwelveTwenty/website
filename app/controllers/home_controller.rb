class HomeController < ApplicationController
  def index
    @blogs = Blog.all
  end
end
