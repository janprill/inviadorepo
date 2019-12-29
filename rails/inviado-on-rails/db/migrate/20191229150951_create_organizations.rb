class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :type
      t.string :name
      t.text :description
      t.jsonb :raw, null: false, default: {}
      t.boolean :is_active, default: true
      t.bigint :corporate_form_id

      t.timestamps
    end
  end
end
