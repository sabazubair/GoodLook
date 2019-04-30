class QuestionChoice < ApplicationRecord
  belongs_to :style
  belongs_to :question
end
