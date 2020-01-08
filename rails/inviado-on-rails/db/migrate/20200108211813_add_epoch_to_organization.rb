class AddEpochToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :created_at_epoch, :bigint
    add_column :organizations, :updated_at_epoch, :bigint

    add_index :organizations, :created_at_epoch
    add_index :organizations, :updated_at_epoch
  end
end
