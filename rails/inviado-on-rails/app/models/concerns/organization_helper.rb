module OrganizationHelper
  extend ActiveSupport::Concern

  PATH = '/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs'

  # enhances the available data utilizing the bing websearch api
  def enhance_with_bing(term: nil, site: nil)
    
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
            raw: occupation.to_json,
            created_at: now,
            updated_at: now
          },
          unique_by: :name
        )

        organization = Organization.find(org.rows.first[0])

        # find or create the link
        link_result = Link.upsert(
          {
            title: "#{link_text} (XING)",
            target: '_blank',
            uri: occupation&.link || 'n/a',
            source: 'xing',
            created_at: now,
            updated_at: now
          },
          unique_by: :uri
        )
        link = Link.find(link_result.rows.first[0])

        unless organization.links.exists?(link.id) 
          organization.links << link
        end
      end
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