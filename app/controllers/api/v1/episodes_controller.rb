module Api
  module V1
    class EpisodesController < ApplicationController
      def index
        episodes = Episode.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'Loaded episodes', data: episodes}, status: :ok
      end
    end
  end
end