class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :clothe

  validates :text, presence: true
end
