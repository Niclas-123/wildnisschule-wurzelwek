class EquipmentList < ApplicationRecord
  belongs_to :equipment_item
  belongs_to :seminar_instance
end
