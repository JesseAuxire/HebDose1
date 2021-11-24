class Review < ApplicationRecord
  belongs_to :story

  validates :content, presence: true
end
