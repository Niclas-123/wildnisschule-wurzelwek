class Admin::BaseController < ApplicationController
  layout 'admin'
  before_action :require_admin_user

  def require_admin_user
    if current_user
      unless current_user.admin
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
end
