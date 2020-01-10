module Types
  class OrganizationType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :uri, String, null: true
    field :is_active, Boolean, null: true
    field :links, [Types::LinkType], null: true
  end
end
