class SeminarInstance < ApplicationRecord
  belongs_to :seminar_type

  has_many :seminars
end
