class Fake < ApplicationRecord
  validates :nickname, presence: true
  validates :url, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :personality, presence: true

  has_many :rentings
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
