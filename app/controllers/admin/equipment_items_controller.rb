module Admin
  class EquipmentItemsController < Admin::BaseController


    def index
      @equipment_items = EquipmentItem.all
    end

    def new
      @equipment_item = EquipmentItem.new
    end

    def create
      @equipment_item = EquipmentItem.new(equipment_item_params)
      if @equipment_item.save
        flash[:notice] = "Du hast erfolgreich einen neuen Ausrüstungsgegenstand erstellt :)"
        redirect_to admin_equipment_items_path
      else
        flash[:alert] = "Da ist etwas schief gelaufen :/"
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      @equipment_item = EquipmentItem.find(params[:id])
      @equipment_item.destroy
      flash[:notice] = "Du hast diesen Ausrüstungsgegenstand erfolgreich gelöscht :)"
      redirect_to admin_equipment_items_path
    end

  private

    def equipment_item_params
      params.require(:equipment_item).permit(:name)
    end

  end
end
