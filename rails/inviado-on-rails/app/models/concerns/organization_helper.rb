module OrganizationHelper
  extend ActiveSupport::Concern

  PATH = '/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs'

    # enhance the organization with data from a bing websearch
    # a value is one result of said search in the form of an openstruct
    # the scope is what the search has been queried for (like imprint, or homepage)
    def enhance_with_bing(value, scope)
      link = find_or_create(value.displayUrl, scope, 'bing', value.url, value.snippet) 
      unless links.exists?(link.id)
        links << link
      end
    end


  class_methods do

    # map a single item from json to an organization
    def new_with(item) 
      occupation = item.occupation
      if occupation.present?
        now = Time.now
        link_text = occupation&.link_text || 'n/a'
        org = Organization.upsert(
          {
            classification: 'commercial',
            name: link_text,
            raw: occupation,
            created_at: now,
            updated_at: now
          },
          unique_by: :name
        )

        organization = Organization.find(org.rows.first[0])

        link = find_or_create(link_text, "XING", "xing", (occupation&.link || 'n/a'))

        unless organization.links.exists?(link.id) 
          organization.links << link
        end
      end
    end

    def find_or_create(link_text, scope, source, uri, description = '')
      now = Time.now
      # find or create the link
      link_result = Link.upsert(
        {
          title: "#{link_text} (#{scope})",
          description: description,
          target: '_blank',
          uri: uri,
          source: source,
          created_at: now,
          updated_at: now
        },
        unique_by: :uri
      )

      Link.find(link_result.rows.first[0])
    end

    def parse
      Dir["#{PATH}/**/*_response.json"].each do |path|
        p '--------------------------------------------------------'
        p path
        object = JSON.parse(File.read(path), object_class: OpenStruct) 
        object.items.each do |item| 
          Organization.new_with(item) 
        end
      end
    end

  end
end