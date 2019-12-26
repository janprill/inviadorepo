require 'sequel'
require_relative 'link'

class Organization < Sequel::Model
  one_to_many :links, :class => :Link, :key => :organization
end