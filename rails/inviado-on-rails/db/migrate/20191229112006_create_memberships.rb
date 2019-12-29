class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.text :description
      t.jsonb :raw
      # polymorphic - makeing things membershipable. E.g. an organization is membershipable meaning that
      # it might have members. It has many members through this polymorphic model.
      t.bigint :member_id
      t.bigint :membershipable_id
      t.string :membershipable_type

      t.timestamps
    end
  end
end
