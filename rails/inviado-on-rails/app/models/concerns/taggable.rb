module Taggable
  extend ActiveSupport::Concern
  included do
    has_many :taggings, as: :taggable, dependent: :destroy
    has_many :tags, through: :taggings

    accepts_nested_attributes_for :tags
  end
end