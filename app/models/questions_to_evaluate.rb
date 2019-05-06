class QuestionsToEvaluate < ApplicationRecord
  belongs_to :evaluation
  belongs_to :question
  has_many :student_answers
end
