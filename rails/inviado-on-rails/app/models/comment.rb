class Comment < ApplicationRecord
  has_many :commentings
  has_many :organizations, through: :commentings, source: :commentable, source_type: 'Organization'

  accepts_nested_attributes_for :organizations
end
