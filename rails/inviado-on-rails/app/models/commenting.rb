class Commenting < ApplicationRecord
  belongs_to :comment
  belongs_to :commentable, polymorphic: true
end

