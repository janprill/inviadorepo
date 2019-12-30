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

    def test_field
      "Hello World!"
    end

    def organizations
      Organization.all
    end
  end
end
