class Course < ApplicationRecord
  belongs_to :user
  has_many :belongs_tos, :dependent => :destroy
  has_many :users, :through => :belongs_tos
end
