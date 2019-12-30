class CreateLinkings < ActiveRecord::Migration[6.0]
  def change
    create_table :linkings do |t|
      t.bigint :linkable_id
      t.bigint :linkable_type
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end

    add_index :linkings, [:linkable_id, :linkable_type]
  end
end
