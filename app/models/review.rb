class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [0, 1, 2, 3, 4, 5]
  validates :content, presence:true
  validates :rating, inclusion: {in: RATING }
  validates_numericality_of :rating
end
