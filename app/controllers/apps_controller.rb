class AppsController < ApplicationController

  def index
  end

  def show
    render params[:app]
  end
end
