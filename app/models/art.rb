class Art < ApplicationRecord
  belongs_to :last_editor
  belongs_to :location
  belongs_to :artist
  has_rich_text :description
  has_one_attached :image
end
