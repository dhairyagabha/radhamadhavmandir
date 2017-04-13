# This migration comes from webmanager (originally 20170305155149)
class CreateWebmanagerForms < ActiveRecord::Migration[5.0]
  def change
    create_table :webmanager_forms do |t|
      t.string :name
      t.text :description
      t.text :success_message
      t.string :primary_mail
      t.string :send_extra_to

      t.timestamps
    end
  end
end
