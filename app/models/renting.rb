class Renting < ApplicationRecord
  belongs_to :fake
  belongs_to :user
  
  validates :price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
