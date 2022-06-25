module Admin
  class SeminarContentsController < Admin::BaseController
    load_and_authorize_resource

    def destroy
      @seminar_content.destroy
      flash[:notice] = "Du hast diesen Seminar Inhalt erfolgreich gelöscht :)"
      redirect_to edit_admin_seminar_type_seminar_instance_path(params[:seminar_type_id], params[:seminar_instance_id])
    end

  private

    def set_seminar_content
      @seminar_content = SeminarContent.find(params[:id])
    end

  end
end
