module Api
  module V1
    class MoviesController < ApplicationController
      def index
        movies = Movie.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'Loaded movies', data: movies}, status: :ok
      end
    end
  end
end