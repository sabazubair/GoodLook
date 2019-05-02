class Style < ApplicationRecord
  has_many :question_choices
  has_many :outfits
  has_many :results
end
