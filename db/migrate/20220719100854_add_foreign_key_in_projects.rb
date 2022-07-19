class AddForeignKeyInProjects < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :projects, :users, column: :creator_id
  end
end
