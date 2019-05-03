class Outfit < ApplicationRecord
  belongs_to :style
  has_many :user_outfits
end
