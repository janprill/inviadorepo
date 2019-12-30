class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end
  end
end
