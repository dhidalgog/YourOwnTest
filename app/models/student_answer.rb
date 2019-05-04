class StudentAnswer < ApplicationRecord
  belongs_to :questions_to_evaluate
  belongs_to :answer
  belongs_to :user
end
