module Admin
  class GalleryImagesController < Admin::BaseController

    before_action :set_gallery
    before_action :set_gallery_image, only: %i[destroy]

    def index
      @gallery = Gallery.first
    end

    def destroy
      @gallery_image.destroy
      flash[:notice] = "Du hast das Galleriebild erfolgreich gelöscht :)"
      redirect_to admin_gallery_images_path
    end

    def new
      @gallery_image = GalleryImage.new
    end

    def create
      @gallery_image = @gallery.gallery_images.new(gallery_image_params)
      if @gallery_image.save
        flash[:notice] = "Du hast die Gallerie erfolgreich editiert :)"
        redirect_to admin_gallery_images_path
      else
        flash[:alert] = "Da ist leider etwas schief gelaufen :/"
        render :new
      end
    end

  private

    def set_gallery
      @gallery = Gallery.first
    end

    def set_gallery_image
      @gallery_image = GalleryImage.find(params[:id])
    end

    def gallery_image_params
      params.require(:gallery_image).permit(:image)
    end

  end
end
