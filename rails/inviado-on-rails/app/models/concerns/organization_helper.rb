module OrganizationHelper
  extend ActiveSupport::Concern

  PATH = '/Users/jan.prill/Documents/workspace/msp/inviadorepo/data/XING/devs'



  class_methods do

    # map a single item from json to an organization
    def new_with(item) 
      occupation = item.occupation
      if (occupation.present?)
        now = Time.now
        org = Organization.upsert(
          {
            classification: 'commercial',
            name: occupation&.link_text || 'n/a',
            raw: occupation.to_json,
            created_at: now,
            updated_at: now
          },
          unique_by: :name
        )
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