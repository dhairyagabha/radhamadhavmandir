# This migration comes from webmanager (originally 20170318222205)
class AddBooleansNewsletterReceiver < ActiveRecord::Migration[5.0]
  def change
    add_column :webmanager_newsletter_receivers, :event_notification, :boolean
  end
end
