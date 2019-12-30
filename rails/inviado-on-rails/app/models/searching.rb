class Searching < ApplicationRecord
  belongs_to :searchresult
  belongs_to :searchable, polymorphic: true
end

