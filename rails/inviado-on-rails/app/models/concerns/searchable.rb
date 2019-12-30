module Searchable
  extend ActiveSupport::Concern
  included do
    has_many :searchings, as: :searchable, dependent: :destroy
    has_many :searchresults, through: :searchings

    accepts_nested_attributes_for :searchresults
  end
end