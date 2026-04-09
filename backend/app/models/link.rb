class Link < ApplicationRecord
  belongs_to :linkable, polymorphic: true

  validates :name, presence: true
  validates :logo_url, allow_nil: true, image_url: true
  validates :url, presence: true, url: true
  validates :linkable_type, presence: true, inclusion: { in: %w[Game Developer] }

end
