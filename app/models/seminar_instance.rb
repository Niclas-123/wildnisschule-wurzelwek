class SeminarInstance < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  monetize :price_cents

  belongs_to :seminar_type

  has_many :equipment_lists
  has_many :equipment_items, through: :equipment_lists
  has_many :seminars
  has_many :guestbook_entries
  has_many :seminar_contents

  has_one_attached :image_1
  has_one_attached :image_2

  validates :name, :description, :price_cents, :image_1, :image_2, :breakfast, :lunch, :dinner, presence: true

  accepts_nested_attributes_for :seminar_contents, allow_destroy: true
end
