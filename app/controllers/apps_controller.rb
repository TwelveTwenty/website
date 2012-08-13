class AppsController < ApplicationController

  def index
  end

  def show
    render params[:appname]
  end
end
