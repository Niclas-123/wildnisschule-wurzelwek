class SeminarType < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one_attached :image

  has_many :seminar_instances

  validates :image, :name, :description, presence: true
end
