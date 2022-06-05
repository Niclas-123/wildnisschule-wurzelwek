class SeminarInstance < ApplicationRecord
  belongs_to :seminar_type
  belongs_to :equipment_list

  has_many :seminars
  has_many :guestbook_entries
end
