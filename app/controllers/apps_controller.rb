class AppsController < ApplicationController
  def show
    render params[:app]
  end
end
