class AppsController < ApplicationController
  caches_page :show
  def show
    render params[:app]
  end
end
