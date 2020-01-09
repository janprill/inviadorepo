class AddUniqueIndicesToFeatures < ActiveRecord::Migration[6.0]
  def change
    add_index :features, [:period_desc, :source], unique: true
  end
end
