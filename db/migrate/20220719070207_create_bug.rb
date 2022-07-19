class CreateBug < ActiveRecord::Migration[7.0]
  def change
    create_table :bugs do |t| 
      t.text :description
      t.string :title
      t.string :deadline
      t.binary :screenshot
      t.integer :bug_type
      t.integer :status
      t.integer :creator_id
      t.integer :solver_id
      t.timestamps
    end
  end
end
