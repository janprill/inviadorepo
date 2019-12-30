class CreateSearchresults < ActiveRecord::Migration[6.0]
  def change
    create_table :searchresults do |t|
      t.string :query
      t.string :source
      t.jsonb :results, null: false, default: {}
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end
  end
end
