class EpisodesController < ApplicationController

  # GET /episodes/
  def index
    @episodes = Episode.all
  end

  # GET /episodes/1
  def show
    @episode = Episode.find(params[:id])
  end

  private

  def character_params
    params.permit(:number, :season, :title, :synopsis)
  end
end