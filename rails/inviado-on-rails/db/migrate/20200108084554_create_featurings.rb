class CreateFeaturings < ActiveRecord::Migration[6.0]
  def change
    create_table :featurings do |t|
      t.bigint :featurable_id
      t.bigint :featurable_type
      t.text :description
      t.jsonb :raw

      t.timestamps
    end
  end
end
