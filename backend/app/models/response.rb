class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question_choice
  belong_to :question
end
