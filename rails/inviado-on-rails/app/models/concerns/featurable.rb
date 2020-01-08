module Featurable
  extend ActiveSupport::Concern
  included do
    has_many :featurings, as: :featurable, dependent: :destroy
    has_many :features, through: :featurings

    accepts_nested_attributes_for :features
  end
end