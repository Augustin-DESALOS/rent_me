  class Renting < ApplicationRecord
  belongs_to :user
  belongs_to :fake
  validates :fake, uniqueness: { scope: :user }
end