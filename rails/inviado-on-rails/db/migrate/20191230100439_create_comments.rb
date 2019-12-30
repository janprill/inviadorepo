class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :body
      t.jsonb :raw, null: false, default: {}

      t.timestamps
    end
  end
end
