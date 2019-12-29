class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.text :description
      t.text :bio
      t.jsonb :raw

      t.timestamps
    end
  end
end
