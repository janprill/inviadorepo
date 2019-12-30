module Commentable
  extend ActiveSupport::Concern
  included do
    has_many :commentings, as: :commentable, dependent: :destroy
    has_many :comments, through: :commentings

    accepts_nested_attributes_for :comments
  end
end