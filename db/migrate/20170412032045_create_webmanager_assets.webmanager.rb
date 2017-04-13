# This migration comes from webmanager (originally 20170412031441)
class CreateWebmanagerAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_assets do |t|
      t.integer :asset_id
      t.integer :article_id

      t.timestamps
    end
  end
end
