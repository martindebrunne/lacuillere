class Review < ActiveRecord::Base
  belongs_to :restaurant
  # validates_numericality_of :rating

  validates_presence_of :content, :rating, :restaurant
  validates :rating, inclusion: { in: 0..5 }, numericality: true
end
