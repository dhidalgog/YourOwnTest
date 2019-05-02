class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  has_many :evaluations
  has_many :categories
  has_many :questions
  # Teacher - Course
  has_many :courses
  # Student - Course
  has_many :belongs_tos
  has_many :courses, :through => :belongs_tos

  validates_presence_of %i[name last_name]

  def admin?
    self.role.name == "Admin"
  end

  def teacher?
    self.role.name == "Teacher"
  end

  def student?
    self.role.name == "Student"
  end
end
