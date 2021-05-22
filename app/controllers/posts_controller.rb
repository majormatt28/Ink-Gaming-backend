class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find(params[:id])
        if post 
            render json: post
        else
            render json: {error: 'Did not find any post'}
        end
    end

    def create 
        post = Post.create(post_params)
        if post.valid?
            render json: post
        else
            render json: post.errors.full_messages
        end   
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: post
    end

    private

    def post_params
        params.permit(:content, :link, :media_type, :user_id, :title)
    end
end