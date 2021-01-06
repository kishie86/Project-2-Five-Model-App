class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :website_domain
      t.string :notes
      t.integer :goal_id
      t.integer :user_id
    end
  end
end
