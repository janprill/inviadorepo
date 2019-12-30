class CreateLinkings < ActiveRecord::Migration[6.0]
  def change
    create_table :linkings do |t|
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.bigint :link_id
      t.bigint :linkable_id
      t.string :linkable_type

      t.timestamps
    end

    add_index :linkings, :link_id
    add_index :linkings, [:linkable_id, :linkable_type]
  end
end
