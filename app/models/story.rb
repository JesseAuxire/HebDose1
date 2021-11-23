class Story < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
