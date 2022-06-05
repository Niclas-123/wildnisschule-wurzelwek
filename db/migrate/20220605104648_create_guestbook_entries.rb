class CreateGuestbookEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :guestbook_entries do |t|

      t.references :seminar_instance
      t.references :user

      t.text :content

      t.timestamps
    end
  end
end
