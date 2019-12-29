module Membershipable
  extend ActiveSupport::Concern
  included do
    has_many :memberships, as: :membershipable, dependent: :destroy
    has_many :members, through: :memberships

    accepts_nested_attributes_for :members
  end
end