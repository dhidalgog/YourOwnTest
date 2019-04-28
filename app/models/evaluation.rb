class Evaluation < ApplicationRecord
  belongs_to :user
  has_many :questions_to_evaluate
  has_many :questions, :through => :questions_to_evaluate
end
