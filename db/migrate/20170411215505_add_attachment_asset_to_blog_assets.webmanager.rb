# This migration comes from webmanager (originally 20170411215022)
class AddAttachmentAssetToBlogAssets < ActiveRecord::Migration
  def self.up
    change_table :webmanager_blog_assets do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :webmanager_blog_assets, :asset
  end
end
