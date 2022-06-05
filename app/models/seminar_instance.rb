class SeminarInstance < ApplicationRecord
  belongs_to :seminar_type
  belongs_to :equipment_list

  has_many :seminars
end
