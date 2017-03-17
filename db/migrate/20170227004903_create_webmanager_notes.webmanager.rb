# This migration comes from webmanager (originally 20170227004446)
class CreateWebmanagerNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_notes do |t|
      t.string :title
      t.text :body
      t.integer :author_id

      t.timestamps
    end
  end
end
