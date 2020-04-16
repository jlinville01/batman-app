module Api
  module V1
    class ActorsController < ApplicationController
      def index
        actors = Actor.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'Loaded actors', data: actors}, status: :ok
      end

      def show
        actor = Actor.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded actor', data: actor}, status: :ok
      end
    end
  end
end