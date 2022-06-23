module Admin
  class UsersController < Admin::BaseController
    load_and_authorize_resource

    before_action :set_user, only: [:show]
    before_action :require_login, only: [:show]


    def show
      @seminars = Seminar.all
    end

  private

    def set_user
      @user = User.find(params[:id])
    end
  end
end
