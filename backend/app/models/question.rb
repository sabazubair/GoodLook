class Question < ApplicationRecord
  has_many :question_choices
  has_many :styles, through :question_choices
end
