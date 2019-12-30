module OrganizationHelper
  extend ActiveSupport::Concern

  PATH = '/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs'



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

        # TODO: upsert on uri
        p org.rows.first.inspect
        organization = Organization.find(org.rows.first[0])
        organization.links << Link.create({
          title: "#{link_text} (XING)",
          target: '_blank',
          uri: occupation&.link || 'n/a',
          source: 'xing'
        })
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