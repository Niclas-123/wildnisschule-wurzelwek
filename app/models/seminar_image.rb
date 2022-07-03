class SeminarImage < ApplicationRecord
  has_one_attached :image
  belongs_to :seminar_instance
end
