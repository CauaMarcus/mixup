class Game < ApplicationRecord
  include Sluggable

  has_many :game_developers
  has_many :developers, through: :game_developers

  HEX_FORMAT = /\A#?(?:[A-F0-9]{3}){1,2}\z/i

  enum :notation_type, {
    arrows: 0,
    directional: 1,
    numpad: 2,
    number: 3,
    }

  validates :name, presence: true, uniqueness: true, length: { minimum:3, maximum:50 }
  validates :notation_type, numericality: { only_integer: true, in: 0..3 }
  validates :sort_order, numericality: { only_integer: true }, uniqueness:true
  validates :description, presence: true, length: { minimum: 50, maximum: 500 }
  validates :icon_url, :banner_url, presence: true, image_url: true
  validates :primary_color, :secondary_color, :tertiary_color,
  presence: true, format: { with: HEX_FORMAT }
end
