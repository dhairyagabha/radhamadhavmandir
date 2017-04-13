# This migration comes from webmanager (originally 20170314014952)
class CreateWebmanagerTags < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
