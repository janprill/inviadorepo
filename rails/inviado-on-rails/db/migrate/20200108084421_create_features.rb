class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |t|
      t.string :key
      t.string :source
      t.string :path
      t.bigint :version
      t.string :period_desc
      t.datetime :period
      t.string :title
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end
  end
end
