class AdminGenresController < ApplicationController
  def index
    @genres = Genre.all
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))

    respond_to do |format|
      if @genre.save
        format.html { redirect_to admin_genres_path, notice: 'Admin genre was successfully created.' }
        format.json { render :index, status: :created, location: @genre }
      else
        @genres = Genre.all
        @genre = Genre.new
        format.html { render :index }
        format.json { render json: @genre.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    Genre.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to admin_genres_url, notice: 'Admin genre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
