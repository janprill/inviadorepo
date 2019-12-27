require 'sequel'
require_relative '../model/module.db_models'

include Inviado::Etl::DBModels

org = Organization.first
p '----------------------'
p org
searchresult = Searchresult.create(:query => 'Ja moin')
org.add_searchresult(searchresult)

orgs = Organization.eager(:links)

orgs.each do |org| 
  p '----------------------'
  p org
  p org.links
  p '----------------------'
end


