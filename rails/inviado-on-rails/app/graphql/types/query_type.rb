module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"

    field :organizations,
          [Types::OrganizationType],
          null: false,
          description: "Returns a list of organizations from our database"

    field :activeOrganizations,
          [Types::OrganizationType],
          null: false,
          description: 'Returns a list of active organizations'

    def test_field
      "Hello World!"
    end

    def organizations
      Organization.all
    end

    def active_organizations
      Organization.joins(:features).where(is_active: true).where("features.raw ->> 'personalaufwand_pro_mitarbeiter_eur' > ?", '80.000').order("features.raw ->> 'personalaufwand_pro_mitarbeiter_eur' DESC").limit(20)
    end
  end
end
