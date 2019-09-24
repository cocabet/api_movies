class Api::V1::MoviesController < ApplicationController
    before_action :authorize_access_request!, except: [:show, :index]
    before_action :set_movie, only: [:show]
    
    def index
        @movies = Movie.all
        render json: @movies
    end

    def show
        render json: @movie
    end

    private

    def set_movie
        @movie = Movie.find(params[:id])
    end

end
