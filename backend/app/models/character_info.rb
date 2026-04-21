class CharacterInfo < ApplicationRecord
  include Sluggable

  belongs_to :character
  belongs_to :game

  validates :bio, :visual_description, presence: true, length: {minimum:50, maximum:1000}
  validates :height, :weight, presence: true, numericality: {only_integer: true}
  validates :icon_url, presence: true, image_url: true
end
