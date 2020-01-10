module Types
  class LinkType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :uri, String, null: true
  end
end
