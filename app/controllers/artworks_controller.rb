class ArtworksController < ApplicationController

  before_filter :authenticate

  # GET /artworks
  # GET /artworks.json
  def index
    @artworks = Artwork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artworks }
    end
  end

  # GET /artworks/1
  # GET /artworks/1.json
  def show
    @artwork = Artwork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artwork }
    end
  end

  # GET /artworks/new
  # GET /artworks/new.json
  def new
    @artwork = Artwork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artwork }
    end
  end

  # GET /artworks/1/edit
  def edit
    @artwork = Artwork.find(params[:id])
  end

  # POST /artworks
  # POST /artworks.json
  def create
    @artwork = Artwork.new(params[:artwork])

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: 'Artwork was successfully created.' }
        format.json { render json: @artwork, status: :created, location: @artwork }
      else
        format.html { render action: "new" }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artworks/1
  # PUT /artworks/1.json
  def update
    @artwork = Artwork.find(params[:id])

    respond_to do |format|
      if @artwork.update_attributes(params[:artwork])
        format.html { redirect_to @artwork, notice: 'Artwork was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artworks/1
  # DELETE /artworks/1.json
  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    respond_to do |format|
      format.html { redirect_to artworks_url }
      format.json { head :no_content }
    end
  end
end
