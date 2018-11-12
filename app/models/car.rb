class Car < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :price, presence: true
end
