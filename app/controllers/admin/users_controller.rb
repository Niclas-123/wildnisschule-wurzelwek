module Admin
  class UsersController < Admin::BaseController
    load_and_authorize_resource

    before_action :set_user, only: [:show]
    before_action :require_login, only: [:show]


    def show
      if params[:old] == 'Ja'
        @seminars = Seminar.where(archived: true)
      else
        @seminars = Seminar.where(archived: false)
      end
    end

  private

    def set_user
      @user = User.find(params[:id])
    end
  end
end
