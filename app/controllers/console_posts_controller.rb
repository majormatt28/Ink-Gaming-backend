class ConsolePostsController < ApplicationController
    def index
        console_posts = ConsolePost.all
        render json: console_posts
    end

    def show
        console_post = ConsolePost.find(params[:id])
        render json: console_post
    end
end