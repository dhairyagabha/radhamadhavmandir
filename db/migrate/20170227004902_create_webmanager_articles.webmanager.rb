# This migration comes from webmanager (originally 20170227004346)
class CreateWebmanagerArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_articles do |t|
      t.string :title
      t.text :description
      t.text :body
      t.integer :author_id
      t.string :permalink

      t.timestamps
    end
  end
end
