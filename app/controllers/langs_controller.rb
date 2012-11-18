class LangsController < ApplicationController
  # GET /langs
  # GET /langs.json
  def index
    @langs = Lang.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @langs }
    end
  end

  # GET /langs/1
  # GET /langs/1.json
  def show
    @lang = Lang.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lang }
    end
  end

  # GET /langs/new
  # GET /langs/new.json
  def new
    @lang = Lang.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lang }
    end
  end

  # GET /langs/1/edit
  def edit
    @lang = Lang.find(params[:id])
  end

  # POST /langs
  # POST /langs.json
  def create
    @lang = Lang.new(params[:lang])

    respond_to do |format|
      if @lang.save
        format.html { redirect_to @lang, notice: 'Lang was successfully created.' }
        format.json { render json: @lang, status: :created, location: @lang }
      else
        format.html { render action: "new" }
        format.json { render json: @lang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /langs/1
  # PUT /langs/1.json
  def update
    @lang = Lang.find(params[:id])

    respond_to do |format|
      if @lang.update_attributes(params[:lang])
        format.html { redirect_to @lang, notice: 'Lang was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /langs/1
  # DELETE /langs/1.json
  def destroy
    @lang = Lang.find(params[:id])
    @lang.destroy

    respond_to do |format|
      format.html { redirect_to langs_url }
      format.json { head :no_content }
    end
  end
end
