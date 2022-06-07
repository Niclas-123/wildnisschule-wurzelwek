class SeminarType < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :seminar_instances
end
