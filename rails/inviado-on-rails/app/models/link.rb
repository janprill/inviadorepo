class Link < ApplicationRecord
  has_many :linkings
  has_many :organizations, through: :linkings, source: :linkable, source_type: 'Organization'

  accepts_nested_attributes_for :organizations
end

