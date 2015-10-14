class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address, :phone_number

  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
