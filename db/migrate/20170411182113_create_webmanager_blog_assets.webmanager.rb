# This migration comes from webmanager (originally 20170411181958)
class CreateWebmanagerBlogAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_blog_assets do |t|
      t.string :asset

      t.timestamps
    end
  end
end
