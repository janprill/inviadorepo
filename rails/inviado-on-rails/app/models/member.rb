class Member < ApplicationRecord
  has_many :memberships
  has_many :organizations, through: :memberships, source: :membershipable, source_type: 'Organization'

  accepts_nested_attributes_for :organizations
end

