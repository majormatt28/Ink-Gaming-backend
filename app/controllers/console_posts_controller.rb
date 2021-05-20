class ConsolePostsController < ApplicationController
    def index
        tags = ConsolePost.all
        render json: tags
    end

    def show
        tag = ConsolePost.find(params[:id])
        render json: tag
    end
end