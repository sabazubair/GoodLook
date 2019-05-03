class UserOutfit < ApplicationRecord
  belongs_to :user
  belongs_to :outfit
end