class Evaluation < ApplicationRecord
  belongs_to :user
  has_many :questions_to_evaluate, dependent: :destroy
  has_many :questions, :through => :questions_to_evaluate
end
