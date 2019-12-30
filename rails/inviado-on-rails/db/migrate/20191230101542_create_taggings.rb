class CreateTaggings < ActiveRecord::Migration[6.0]
  def change
    create_table :taggings do |t|
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.bigint :tag_id
      t.bigint :taggable_id
      t.bigint :taggable_type

      t.timestamps
    end

    add_index :taggings, :tag_id
    add_index :taggings, [:taggable_id, :taggable_type]
  end
end
