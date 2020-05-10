class CharactersController < ApplicationController

  def find
    @characters = Character.where('alter_ego = ?', params[:search_string].capitalize)
  end

  # GET /characters
  def index
    @characters = Character.all
  end

  # GET /characters/1
  def show
    @character = Character.find(params[:id])
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # POST /characters
  def create
    @character = Character.new(character_params)
    @character.avatar = 'characters/empty_profile.png'

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def character_params
    params.require(:character).permit(:alter_ego, :real_name, :debut, :status, :bio)
  end
end