class CreateCommentings < ActiveRecord::Migration[6.0]
  def change
    create_table :commentings do |t|
      t.bigint :commentable_id
      t.bigint :commentable_type
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end

    add_index :commentings, [:commentable_id, :commentable_type]
  end
end
