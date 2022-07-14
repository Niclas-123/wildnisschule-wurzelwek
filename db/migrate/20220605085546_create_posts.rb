class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|

      t.string :title
      t.text :content_1
      t.text :content_2
      t.text :content_3
      t.text :content_4

      t.timestamps
    end
  end
end
