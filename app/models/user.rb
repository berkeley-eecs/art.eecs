class User < ApplicationRecord
  has_rich_text :bio
  has_one_attached :profile_image
end
