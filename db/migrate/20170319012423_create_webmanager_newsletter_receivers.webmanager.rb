# This migration comes from webmanager (originally 20170318221839)
class CreateWebmanagerNewsletterReceivers < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_newsletter_receivers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
