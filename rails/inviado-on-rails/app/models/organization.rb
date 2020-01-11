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

  # attachments
  has_many_attached :screenshots
  has_many_attached :thumbs
end
