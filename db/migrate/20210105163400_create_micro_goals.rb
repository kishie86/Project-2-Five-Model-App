class CreateMicroGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :micro_goals do |t|
      t.string :deadline
      t.string :content
      t.integer :goal_id
    end
  end
end
