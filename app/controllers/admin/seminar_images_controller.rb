module Admin
  class SeminarImagesController < Admin::BaseController
    before_action :set_seminar_image, only: %i[destroy]

    def destroy
      @seminar_image.destroy
      flash[:notice] = "Du hast das Foto erfolgreich gelöscht :)"
      redirect_to edit_admin_seminar_type_seminar_instance_path(params[:seminar_type_id], params[:seminar_instance_id])
    end


    def set_seminar_image
      @seminar_image = SeminarImage.find(params[:id])
    end
  end
end
