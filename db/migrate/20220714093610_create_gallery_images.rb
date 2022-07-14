class CreateGalleryImages < ActiveRecord::Migration[7.0]
  def change
    create_table :gallery_images do |t|

      t.references :gallery

      t.timestamps
    end
  end
end
