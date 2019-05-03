class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  belongs_to :role
  has_many :evaluations
  has_many :categories
  has_many :questions
  # Teacher - Course
  has_many :courses
  # Student - Course
  has_many :belongs_tos
  has_many :courses, :through => :belongs_tos

  validates_presence_of %i[name]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.role_id = 2
    end
  end

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
