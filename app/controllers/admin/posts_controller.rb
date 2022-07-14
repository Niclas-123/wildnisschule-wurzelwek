module Admin
  class PostsController < Admin::BaseController
    load_and_authorize_resource

    before_action :set_post, only: %i[show edit update]

    def index
      @posts = Post.all
    end

    def show
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(post_params)
      if @post.save
        flash[:notice] = "Du hast erfolgreich einen neuen Post erstellt :)"
        redirect_to admin_post_path(@post)
      else
        flash[:alert] = "Da ist leider etwas schief gelaufen :/"
        render :new
      end
    end

    def edit
    end

    def update
      if @post.update(post_params)
        flash[:notice] = "Du hast den Post erfolgreich editiert :)"
        redirect_to admin_post_path(@post)
      else
        flash[:alert] = "Da ist leider etwas schief gelaufen :/"
        render :edit
      end
    end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content_1, :content_2, :content_3, :content_4, :title_image, :post_image_1, :post_image_2, :post_image_3)
    end

  end
end
