class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :projects
    has_many :bugs, foreign_key: :creator_id
    has_many :bugs, foreign_key: :solver_id
    
    has_many :user_projects
    has_many :projects, through: :user_projects
end