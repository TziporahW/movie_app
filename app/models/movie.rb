class Movie < ApplicationRecord
  validates :title, presence: true
  #validates :plot, presence: true, length: { minimum: 10 }
end
