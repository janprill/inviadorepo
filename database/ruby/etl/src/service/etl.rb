require 'sequel'

DB = Sequel.connect('postgres://jan.prill:@localhost:5432/inviado') # requires pg

class Link < Sequel::Model(DB[:links])
  many_to_one :organization, :class => :Organization
end

class Searchresult < Sequel::Model(DB[:searchresults])
  many_to_one :organization, :class => :Organization
end

class Organization < Sequel::Model(DB[:organizations])
  one_to_many :links, :class => :Link
  one_to_many :searchresults, :class => :Searchresult
end




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


