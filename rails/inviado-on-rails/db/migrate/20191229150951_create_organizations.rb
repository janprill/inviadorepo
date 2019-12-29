class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :type
      t.string :name
      t.text :description
      t.jsonb :raw
      t.boolean :is_active
      t.bigint :corporate_form_id

      t.timestamps
    end
  end
end
