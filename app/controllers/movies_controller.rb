class MoviesController < ApplicationController

  # GET /movies/
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  def show
    @movie = Movie.find(params[:id])
  end

  private

  def character_params
    params.permit(:title, :release_date, :synopsis)
  end
end