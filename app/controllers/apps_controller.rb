class AppsController < ApplicationController
  caches_page :show

  def index

  end

  def show
    render params[:app]
  end
end
