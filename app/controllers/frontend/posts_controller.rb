module Frontend
  class PostsController < ApplicationController
    load_and_authorize_resource

    before_action :set_post, only: %i[show]

    def index
      @posts = Post.all
    end

    def show
    end

  private

    def set_post
      @post = Post.find(params[:id])
    end

  end
end
