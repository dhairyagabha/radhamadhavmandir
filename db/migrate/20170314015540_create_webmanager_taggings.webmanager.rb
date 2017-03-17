# This migration comes from webmanager (originally 20170314015020)
class CreateWebmanagerTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_taggings do |t|
      t.integer :tag_id, foreign_key: true
      t.integer :article_id, foreign_key: true

      t.timestamps
    end
  end
end
