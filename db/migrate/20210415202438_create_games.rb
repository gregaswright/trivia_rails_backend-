class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :difficulty
      t.string :category
      t.integer :points
      t.integer :user_id

      t.timestamps
    end
  end
end
