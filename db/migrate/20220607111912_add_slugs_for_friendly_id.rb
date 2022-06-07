class AddSlugsForFriendlyId < ActiveRecord::Migration[7.0]
  def change
    add_column :seminar_types, :slug, :string
    add_index :seminar_types, :slug, unique: true

    add_column :seminar_instances, :slug, :string
    add_index :seminar_instances, :slug, unique: true

    add_column :seminars, :slug, :string
    add_index :seminars, :slug, unique: true
  end
end
