class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :title
      t.string :target
      t.string :uri
      t.string :description
      t.string :source
      t.boolean :is_active, default: true
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end

    add_index :links, :uri, unique: true
  end
end
