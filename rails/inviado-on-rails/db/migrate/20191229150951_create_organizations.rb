class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :classification
      t.string :name
      t.text :description
      t.string :uri
      t.jsonb :raw, null: false, default: {}
      t.boolean :is_active, default: true
      t.bigint :corporate_form_id

      t.timestamps
    end

    add_index :organizations, :name, unique: true
    add_index :organizations, :uri
  end
end
