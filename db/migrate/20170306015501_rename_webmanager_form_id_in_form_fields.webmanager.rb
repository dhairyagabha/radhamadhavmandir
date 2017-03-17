# This migration comes from webmanager (originally 20170306015328)
class RenameWebmanagerFormIdInFormFields < ActiveRecord::Migration[5.0]
  def change
    rename_column :webmanager_form_fields, :webmanager_form_id, :form_id
  end
end
