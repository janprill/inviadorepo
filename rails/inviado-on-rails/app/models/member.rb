class Member < ApplicationRecord
  has_many :memberships
  has_many :organizations, through: :memberships, source: :memberable, source_type: 'Organization'
end

