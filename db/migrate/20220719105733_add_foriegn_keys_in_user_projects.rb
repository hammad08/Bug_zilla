class AddForiegnKeysInUserProjects < ActiveRecord::Migration[7.0]
  def change
     add_foreign_key :user_projects, :users
     add_foreign_key :user_projects, :projects
  end
end
