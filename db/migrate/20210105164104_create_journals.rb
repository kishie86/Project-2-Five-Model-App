class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.string :name
      t.string :date
      t.string :title
      t.string :content
      t.integer :user_id
    end
  end
end
