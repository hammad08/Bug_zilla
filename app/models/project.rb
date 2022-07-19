class Project < ApplicationRecord
    belongs_to :creator, class_name: :User, foreign_key: :creator_id
    has_many :bugs
    
    has_many :user_projects
    has_many :users, through: :user_projects
end