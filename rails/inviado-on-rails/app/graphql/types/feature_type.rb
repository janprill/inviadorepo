module Types
  class FeatureType < Types::BaseObject
    field :id, ID, null: false
    field :key, String, null: true
    field :raw, GraphQL::Types::JSON, null: true
    field :personalaufwand_pro_mitarbeiter_eur, String, null: true
    
    def personalaufwand_pro_mitarbeiter_eur
      object.raw['personalaufwand_pro_mitarbeiter_eur']
    end
  end
end
