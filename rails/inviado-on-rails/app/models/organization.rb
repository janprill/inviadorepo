class Organization < ApplicationRecord
  # polymorphic associations
  include Linkable
  include Searchable
  include Taggable
  include Commentable
  include Featurable
  include Membershipable

  # helper
  include OrganizationHelper
end
