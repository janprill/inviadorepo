class MakeFeaturingsPolymorph < ActiveRecord::Migration[6.0]
  def change
    add_column :featurings, :feature_id, :bigint

    add_index :featurings, :feature_id
    add_index :featurings, [:featurable_id, :featurable_type]
  end
end
