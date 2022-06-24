class EquipmentItem < ApplicationRecord
  has_many :equipment_lists
  has_many :seminar_instances, through: :equipment_lists
end
