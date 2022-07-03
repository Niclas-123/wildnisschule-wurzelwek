module Admin
  class GuestbookEntriesController < Admin::BaseController
    load_and_authorize_resource

    def index
      @guestbook_entries = GuestbookEntry.paginate(page: params[:page], per_page: 3)
    end

    def new
      @guestbook_entry = GuestbookEntry.new
    end

    def create
      @guestbook_entry = GuestbookEntry.new(guestbook_entry_params)
      if @guestbook_entry.save
        flash[:notice] = "Dein Gästebucheintrag wurde erfolgreich erstellt :)"
        redirect_to admin_guestbook_entries_path
      else
        render 'new'
      end
    end

    def destroy
      @guestbook_entry.destroy
      flash[:notice] = "Du hast den Gästebucheintrag erfolgreich gelöscht :)"
      redirect_to admin_guestbook_entries_path
    end

  private

    def guestbook_entry_params
      params.require(:guestbook_entry).permit(:seminar_instance_id, :content, :title, :author).merge(user: current_user)
    end

  end
end
