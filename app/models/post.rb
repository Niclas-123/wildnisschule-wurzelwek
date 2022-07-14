class Post < ApplicationRecord
  has_one_attached :title_image
  has_one_attached :post_image_1
  has_one_attached :post_image_2
  has_one_attached :post_image_3

  validates :title, :content_1, :content_2, :content_3, :content_4, :title_image, :post_image_1, :post_image_2, :post_image_3, presence: true
end
