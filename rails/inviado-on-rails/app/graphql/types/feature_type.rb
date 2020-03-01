module Types
  class FeatureType < Types::BaseObject
    field :id, ID, null: false
    field :key, String, null: true
    field :raw, GraphQL::Types::JSON, null: true
  end
end
