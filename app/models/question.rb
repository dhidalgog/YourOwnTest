class Question < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :questions_to_evaluate, :dependent => :destroy
  has_many :evaluations, :through => :questions_to_evaluate
  
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :questions_to_evaluate
  accepts_nested_attributes_for :answers

  
end
