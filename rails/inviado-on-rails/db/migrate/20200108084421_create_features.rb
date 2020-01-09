class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |t|
      t.string :key
      t.string :source # e.g. the deeplink to northdata
      t.string :path # e.g. the path to a file on the filesystem
      t.bigint :version
      t.string :period_desc # e.g. the :finanzkennzahlen_datum of northdata
      t.datetime :period
      t.string :title
      t.text :description
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end
  end
end
