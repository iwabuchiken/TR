class SubGenresController < ApplicationController
  # GET /sub_genres
  # GET /sub_genres.json
  def index
    @sub_genres = SubGenre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sub_genres }
    end
  end

  # GET /sub_genres/1
  # GET /sub_genres/1.json
  def show
    @sub_genre = SubGenre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sub_genre }
    end
  end

  # GET /sub_genres/new
  # GET /sub_genres/new.json
  def new
    @sub_genre = SubGenre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sub_genre }
    end
  end

  # GET /sub_genres/1/edit
  def edit
    @sub_genre = SubGenre.find(params[:id])
  end

  # POST /sub_genres
  # POST /sub_genres.json
  def create
    @sub_genre = SubGenre.new(params[:sub_genre])

    respond_to do |format|
      if @sub_genre.save
        format.html { redirect_to @sub_genre, notice: 'Sub genre was successfully created.' }
        format.json { render json: @sub_genre, status: :created, location: @sub_genre }
      else
        format.html { render action: "new" }
        format.json { render json: @sub_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sub_genres/1
  # PUT /sub_genres/1.json
  def update
    @sub_genre = SubGenre.find(params[:id])

    respond_to do |format|
      if @sub_genre.update_attributes(params[:sub_genre])
        format.html { redirect_to @sub_genre, notice: 'Sub genre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sub_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_genres/1
  # DELETE /sub_genres/1.json
  def destroy
    @sub_genre = SubGenre.find(params[:id])
    @sub_genre.destroy

    respond_to do |format|
      format.html { redirect_to sub_genres_url }
      format.json { head :no_content }
    end
  end
end
