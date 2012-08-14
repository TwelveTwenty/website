class GoodiesController < ApplicationController
  # GET /goodies
  # GET /goodies.json
  def index
    @goodies = Goody.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @goodies }
    end
  end

  # GET /goodies/1
  # GET /goodies/1.json
  def show
    @goody = Goody.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @goody }
    end
  end

  # GET /goodies/new
  # GET /goodies/new.json
  def new
    @goody = Goody.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @goody }
    end
  end

  # GET /goodies/1/edit
  def edit
    @goody = Goody.find(params[:id])
  end

  # POST /goodies
  # POST /goodies.json
  def create
    @goody = Goody.new(params[:goody])

    respond_to do |format|
      if @goody.save
        format.html { redirect_to @goody, notice: 'Goody was successfully created.' }
        format.json { render json: @goody, status: :created, location: @goody }
      else
        format.html { render action: "new" }
        format.json { render json: @goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /goodies/1
  # PUT /goodies/1.json
  def update
    @goody = Goody.find(params[:id])

    respond_to do |format|
      if @goody.update_attributes(params[:goody])
        format.html { redirect_to @goody, notice: 'Goody was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goodies/1
  # DELETE /goodies/1.json
  def destroy
    @goody = Goody.find(params[:id])
    @goody.destroy

    respond_to do |format|
      format.html { redirect_to goodies_url }
      format.json { head :no_content }
    end
  end
end
