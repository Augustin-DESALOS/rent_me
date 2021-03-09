class Fake < ApplicationRecord
  validates :nickname, presence: true
  validates :url, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :personality, presence: true
  belongs_to :user
end