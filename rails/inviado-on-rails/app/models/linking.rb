class Linking < ApplicationRecord
  belongs_to :link
  belongs_to :linkable, polymorphic: true
end

