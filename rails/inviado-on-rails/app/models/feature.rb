class Feature < ApplicationRecord
  has_many :featurings, dependent: :destroy
  has_many :organizations, through: :featurings, source: :featurable, source_type: 'Organization'

  accepts_nested_attributes_for :organizations
end

