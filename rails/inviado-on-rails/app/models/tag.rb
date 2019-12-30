class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :organizations, through: :taggings, source: :taggable, source_type: 'Organization'

  accepts_nested_attributes_for :organizations
end
