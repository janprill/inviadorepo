require 'sequel'

DB = Sequel.connect('postgres://jan.prill:@localhost:5432/inviado') # requires pg

class Link < Sequel::Model(DB[:links])
  many_to_one :organization, :class => :Organization
end

class Organization < Sequel::Model(DB[:organizations])
  one_to_many :links, :class => :Link, :key => :organization
end

# db['select * from organizations'].each do |row|
#   p row
# end

org = Organization.first
p '----------------------'
p org

orgs = Organization.eager(:links)

orgs.each do |org| 
  p '----------------------'
  p org
  p org.links
  p '----------------------'
end


