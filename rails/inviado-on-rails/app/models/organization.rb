require_relative 'concerns/membershipable'

class Organization < ApplicationRecord
  include Membershipable
end
