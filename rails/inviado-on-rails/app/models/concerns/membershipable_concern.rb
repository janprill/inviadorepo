module Membershipable
  extend ActiveSupport::Concern
  included do
    has_many :memberships, as: :memberable, dependent: :destroy
    has_many :members, through: :memberships
    after_create :create_membership
  end

  def create_membership
    Membership.create(membershipable_type: self.class.name, membershipable_id: self.id, member_id: self.creator_id)
  end
end