class ActorsController < ApplicationController

  # GET /actors/
  def index
    @actors = Actor.all
  end

  # GET /actors/1
  def show
    @actor = Actor.find(params[:id])
  end

  private

  def character_params
    params.permit(:title, :release_date, :synopsis)
  end
end