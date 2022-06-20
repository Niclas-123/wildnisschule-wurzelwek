class GuestbookEntriesController < ApplicationController
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
      redirect_to guestbook_entries_path
    else

      render 'new'
    end
  end

private

  def guestbook_entry_params
    params.require(:guestbook_entry).permit(:seminar_instance_id, :content).merge(user: current_user)
  end

end
