require 'json'
require 'csv'

module OrganizationHelper
  extend ActiveSupport::Concern

  PATH = '/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs'

  # enhance the organization with data from a bing websearch
  # a value is one result of said search in the form of an openstruct
  # the scope is what the search has been queried for (like imprint, or homepage)
  def enhance_with_bing(scope, value)
    link = Organization.find_or_create_link(name, scope, 'bing', value.url, value.snippet) 
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
    json = search_service.query(term)

    json
  end

  def extract_first_result(search_service, json)
    o = search_service.map_to_struct(json)
    persist_searchresult(json, o)

    o&.webPages&.value&.first || nil
  end

  def persist_searchresult(json, object)
    web_search_url = (object&.webPages&.webSearchUrl || '')
    searchresult = Searchresult.create(
      query: web_search_url,
      source: 'bing',
      raw: JSON.parse(json)
    )
    searchresults << searchresult
  end


  class_methods do

    def symbolize(str)
      str
        .downcase
        .gsub('ä', 'ae')
        .gsub('ü', 'ue')
        .gsub('ö', 'oe')
        .gsub('ß', 'ss')
        .gsub('%', 'prozent')
        .gsub(/\s/, '_')
        .gsub(/\W/, '')
        .to_sym
    end

    def parse_csv
      path = '/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/northdata/2020-01-07/software_hh_ma_gteq_100.csv'
      csv = CSV.read(path, 'r', encoding: 'ISO-8859-1', headers: true, col_sep: ';')
      p csv.inspect

      csv.each do |row|
        hash = {}
        row.each do |k, v|
          key = symbolize(k)
          hash[key] = v
        end
        p hash.inspect
        p hash.keys.inspect
        # p "#{hash[:name]} - #{hash[:website]} - #{hash[:gegenstand]}"
        now = Time.now
        # TODO: add source / filename in features
        org = Organization.upsert(
          {
            classification: 'commercial',
            name: hash[:name],
            description: hash[:gegenstand],
            uri: hash[:website],
            created_at: now,
            updated_at: now,
            created_at_epoch: now.to_i,
            updated_at_epoch: now.to_i
          },
          unique_by: :name
        )
  
        organization = Organization.find(org.rows.first[0])

        link = find_or_create_link(hash[:name], 'Northdata', 'northdata', hash[:website])
        unless (link.nil? || organization.links.exists?(link.id))
          organization.links << link
        end

        feature = find_or_create_feature('kpi', path, hash)
        unless (feature.nil? || organization.features.exists?(feature.id))
          organization.features << feature
        end
      end
    end

    # iterate all organizations and enhance the data with 
    # results retrieved from the bing websearch api
    def enhance_with_bing(main_site = nil)
      search_service = SearchService.new

      Organization.all.each_with_index do |org, i|
        break if (i >= 10)
        p '--------------------------------------------'
        p i
        p '--------------------------------------------'
        # First: try to determine the organizations main website
        org.retrieve_main_site(search_service) if main_site

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
        link_text = occupation&.link_text || 'n/a'
        organization = find_or_create_org(link_text, occupation)

        link = find_or_create_link(link_text, "XING", "xing", (occupation&.link || 'n/a'))

        unless (link.nil? || organization.links.exists?(link.id))
          organization.links << link
        end
      end
    end

    def find_or_create_org(link_text, raw)
      now = Time.now 
      
      org = Organization.upsert(
        {
          classification: 'commercial',
          name: link_text,
          raw: raw,
          created_at: now,
          updated_at: now,
          created_at_epoch: now.to_i,
          updated_at_epoch: now.to_i
        },
        unique_by: :name
      )

      Organization.find(org.rows.first[0])
    end

    def find_or_create_feature(key, path, north_data)
      begin
        now = Time.now
        feature = Feature.upsert(
          {
            key: key,
            path: path,
            source: north_data[:north_data_url],
            period_desc: north_data[:finanzkennzahlen_datum],
            raw: north_data,
            created_at: now,
            updated_at: now
          }
        )

        return Feature.find(feature.rows.first[0])
      rescue
      end

      nil
    end

    def find_or_create_link(link_text, scope, source, uri, description = '')
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