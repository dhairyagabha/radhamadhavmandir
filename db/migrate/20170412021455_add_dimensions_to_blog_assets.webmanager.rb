# This migration comes from webmanager (originally 20170412021342)
class AddDimensionsToBlogAssets < ActiveRecord::Migration[5.0]
  def change
    add_column :webmanager_blog_assets, :dimensions, :string
  end
end
