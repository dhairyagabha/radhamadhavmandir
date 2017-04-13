# This migration comes from webmanager (originally 20170305194152)
class CreateWebmanagerFormFields < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_form_fields do |t|
      t.references :webmanager_form, foreign_key: true
      t.string :name
      t.string :label
      t.string :hint
      t.string :placeholder
      t.string :as
      t.text :collection
      t.boolean :disabled
      t.boolean :required

      t.timestamps
    end
  end
end
