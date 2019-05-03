class User < ApplicationRecord
  has_many :responses
  has_many :user_outfits
  has_one :result
  has_secure_password
end
