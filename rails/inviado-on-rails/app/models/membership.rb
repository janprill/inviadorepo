class Membership < ApplicationRecord
  belongs_to :member
  belongs_to :membershipable, polymorphic: true
end

