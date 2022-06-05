class EquipmentListsController < ApplicationController
  before_action :set_equipment_list, only: %i[show]

  def show
  end

private

  def set_equipment_list
    @equipment_list = EquipmentList.find(params[:id])
  end

end
