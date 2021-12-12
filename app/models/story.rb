class Story < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
end
