class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.string :description
      t.integer :journal_id
    end
  end
end
