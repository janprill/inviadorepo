class AddNotesAndSourceToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :notes, :text
    add_column :organizations, :source, :string
    add_column :organizations, :has_devs_on_xing, :boolean
  end
end
