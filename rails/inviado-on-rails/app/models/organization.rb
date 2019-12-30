require_relative 'concerns/commentable'
require_relative 'concerns/linkable'
require_relative 'concerns/membershipable'
require_relative 'concerns/membershipable'
require_relative 'concerns/membershipable'

class Organization < ApplicationRecord
  include Linkable
  include Searchable
  include Taggable
  include Commentable
  include Membershipable
end
