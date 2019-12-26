require 'sequel'
require_relative 'organization'

class Link < Sequel::Model
  many_to_one :organization, :class => :Organization
end