class Searchresult < ApplicationRecord
  has_many :searchings, dependent: :destroy
  has_many :organizations, through: :searchings, source: :searchable, source_type: 'Organization'

  accepts_nested_attributes_for :organizations
end

