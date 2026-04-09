class Developer < ApplicationRecord
  include Sluggable

  has_many :game_developers
  has_many :games, through: :game_developers

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }
  validates :description, presence: true, length: { minimum: 50, maximum: 1000 }
  validates :logo_url, presence: true, uniqueness: true, image_url: true
  validates :founded, presence: true, comparison: {
    less_than: -> { Date.tomorrow },
    message: "date cannot be in the future" }
end
