module Linkable
  extend ActiveSupport::Concern
  included do
    has_many :linkings, as: :linkable, dependent: :destroy
    has_many :links, through: :linkings

    accepts_nested_attributes_for :links
  end
end