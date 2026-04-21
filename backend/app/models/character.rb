class Character < ApplicationRecord
  include Sluggable

  validates :name, presence: true, uniqueness: true, length: { minimum:1, maximum:50 }
  validates :bio, presence: true, uniqueness: true, length: { minimum:50, maximum:500 }
  validates :first_appearance_year, presence: true, date_not_future: true
  validates :sort_order, presence: true, numericality: { only_integer: true }
  validates :icon_url, presence:true, image_url: true
  validates :first_appearance_game, presence: true
  validates :search_names, allow_blank: true
  validates :active, presence: true
end
