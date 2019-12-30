class CreateSearchings < ActiveRecord::Migration[6.0]
  def change
    create_table :searchings do |t|
      t.bigint :searchable_id
      t.bigint :searchable_type
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end

    add_index :searchings, [:searchable_id, :searchable_type]
  end
end
