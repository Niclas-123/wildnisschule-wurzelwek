class Post < ApplicationRecord
  has_one_attached :title_image
  has_one_attached :post_image_1
  has_one_attached :post_image_2
  has_one_attached :post_image_3
end
