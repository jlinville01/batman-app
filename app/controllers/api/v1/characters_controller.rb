module Api
  module V1
    class CharactersController < ApplicationController
      def index
        characters = Character.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'Loaded characters', data: characters}, status: :ok
      end

      def show
        characters = Character.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded character', data: characters}, status: :ok
      end

      def create
        character = Character.new(character_params)

        if character.save
          render json: { status: 'SUCCESS', message: 'Saved character', data: character}, status: :ok
        else
          render json: { status: 'ERROR', message: 'Character not saved', data: character.errors}, status: :unprocessable_entity
        end
      end

      private

      def character_params
        params.permit(:alter_ego, :real_name, :debut, :status, :bio)
      end
    end
  end
end