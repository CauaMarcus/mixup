class Game < ApplicationRecord
  before_validation :generate_slug

  enum :notation_type, {
    arrows: 0,
    directional: 1,
    numpad: 2,
    number: 3,
    }

  VALID_HEX = /\A#?(?:[A-F0-9]{3}){1,2}\z/i

  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
  validates :notation_type, numericality: { only_integer: true, in: 0..3 }
  validates :sort_order, numericality: { only_integer: true }, uniqueness:true
  validates :developer, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :primary_color, :secondary_color, :tertiary_color, presence: true, format: { with: VALID_HEX }
  validates :icon_url, presence: true
  validates :banner_url, presence: true

  private

  def generate_slug
    self.slug = name.parameterize if name.present? && slug.blank?
  end
end
