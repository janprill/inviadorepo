class CreateFeaturings < ActiveRecord::Migration[6.0]
  def change
    create_table :featurings do |t|
      t.bigint :featurable_id
      t.string :featurable_type
      t.text :description
      t.jsonb :raw, null: false, default: {}
      t.bigint :feature_id

      t.timestamps
    end

    add_index :featurings, :feature_id
    add_index :featurings, [:featurable_id, :featurable_type]
  end
end
