class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :game_id
      t.string :game_name
      t.integer :user_id
      t.string :info

      t.timestamps
    end
  end
end
