module OrganizationHelper
  extend ActiveSupport::Concern

  PATH = '/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs'

  # enhance the organization with data from a bing websearch
  # a value is one result of said search in the form of an openstruct
  # the scope is what the search has been queried for (like imprint, or homepage)
  def enhance_with_bing(scope, value)
    link = Organization.find_or_create(name, scope, 'bing', value.url, value.snippet) 
    unless (link.nil? || links.exists?(link.id))
      links << link
    end
  end

  def retrieve_main_site(search_service)
    result = extract_first_result(search_service, query_bing(search_service, name))
    unless (result.nil? || result.url.nil?)
      # main uri on the org table itself
      update(uri: result.url)

      # plus a link
      enhance_with_bing("Home", result)
    end
  end

  def retrieve_legal_notice(search_service)
    host = search_service.extract_host(uri)
    scope = "Impressum"
    term = search_service.build_site_query(site: host, term: scope)
    result = extract_first_result(search_service, query_bing(search_service, term))
    unless (result.nil? || result.url.nil?)
      enhance_with_bing(scope, result)
    end
  end

  # page: e.g. Kununu or Glassdoor
  def retrieve_links(search_service, site, page)
    term = search_service.and_query("site:#{site}", name, page)
    result = extract_first_result(search_service, query_bing(search_service, term))
    unless (result.nil? || result.url.nil?)
      enhance_with_bing(page, result)
    end
  end

  def query_bing(search_service, term)
    search_service.query(term)
  end

  def extract_first_result(search_service, json)
    o = search_service.map_to_struct(json)
    o&.webPages&.value&.first || nil
  end


  class_methods do

    # iterate all organizations and enhance the data with 
    # results retrieved from the bing websearch api
    def enhance_with_bing
      search_service = SearchService.new

      Organization.all.each_with_index do |org, i|
        break if (i >= 10)
        p '--------------------------------------------'
        p i
        p '--------------------------------------------'
        # First: try to determine the organizations main website
        org.retrieve_main_site(search_service)

        # Second: Search for the impressum of the organization on its main site
        org.retrieve_legal_notice(search_service)

        # Third: Search for links at kununu and glassdoor
        org.retrieve_links(search_service, "kununu.com", "Kununu")
        org.retrieve_links(search_service, "glassdoor.de", "Glassdoor")

        sleep 1
      end
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

        link = find_or_create(link_text, "XING", "xing", (occupation&.link || 'n/a'))

        unless (link.nil? || organization.links.exists?(link.id))
          organization.links << link
        end
      end
    end

    def find_or_create(link_text, scope, source, uri, description = '')
      now = Time.now
      # find or create the link
      begin
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
          unique_by: :title
        )

        return Link.find(link_result.rows.first[0])
      rescue
      end

      nil
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