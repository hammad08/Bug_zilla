class AddForeignKeyToBug < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bugs, :users, column: :creator_id
  end
end
