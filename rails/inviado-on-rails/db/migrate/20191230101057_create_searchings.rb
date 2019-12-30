class CreateSearchings < ActiveRecord::Migration[6.0]
  def change
    create_table :searchings do |t|
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.bigint :searchresult_id
      t.bigint :searchable_id
      t.string :searchable_type

      t.timestamps
    end

    add_index :searchings, :searchresult_id
    add_index :searchings, [:searchable_id, :searchable_type]
  end
end
