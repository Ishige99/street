class History < ApplicationRecord
  belongs_to :user
  belongs_to :clothe
  has_one :purchase
end
