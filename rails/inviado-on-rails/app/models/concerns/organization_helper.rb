module OrganizationHelper
  extend ActiveSupport::Concern

  PATH = '/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs'

  # enhance the organization with data from a bing websearch
  # a value is one result of said search in the form of an openstruct
  # the scope is what the search has been queried for (like imprint, or homepage)
  def enhance_with_bing(value, scope)
    link = find_or_create(scope, 'bing', value.url, value.snippet) 
    unless links.exists?(link.id)
      links << link
    end
  end

  def search_for
    search_service = SearchService.new
    json = search_service.query(name)
    o = search_service.map_to_struct(json)
    p o.inspect
    host = search_service.extract_host(o.webPages.value.first.url)
    search_for_imprint(host)
  end

  # TODO: refactor this stuff for generality and best readibility
  def search_for_imprint(site)
    search_service = SearchService.new
    query = "site:#{site} AND Impressum"
    json = search_service.query(query)
    o = search_service.map_to_struct(json)
    p o.webPages.value.first.url
  end


  class_methods do

    # iterate all organizations and enhance the data with 
    # results retrieved from the bing websearch api
    def enhance_with_bing
      org = Organization.first
      # First: try to determine the organizations main website

      # Second: Search for the impressum of the organization on its main site

      # Third: Search for links at kununu and glassdoor
      
    end

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

        find_or_create("XING", "xing", (occupation&.link || 'n/a'))

        unless organization.links.exists?(link.id) 
          organization.links << link
        end
      end
    end

    def find_or_create(scope, source, uri, description = '')
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