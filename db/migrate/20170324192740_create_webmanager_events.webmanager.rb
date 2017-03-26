# This migration comes from webmanager (originally 20170324191851)
class CreateWebmanagerEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_events do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_time
      t.text :location
      t.string :organizer

      t.timestamps
    end
  end
end
