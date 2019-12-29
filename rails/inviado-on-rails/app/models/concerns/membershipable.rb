module Membershipable
  extend ActiveSupport::Concern
  included do
    has_many :memberships, as: :membershipable, dependent: :destroy
    has_many :members, through: :memberships

    accepts_nested_attributes_for :members

    # after_create :create_membership
  end

  def create_membership
    Membership.create(membershipable_type: self.class.name, membershipable_id: self.id, member_id: self.member_id)
  end
end