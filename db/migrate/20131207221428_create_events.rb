class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.integer :game_id
      t.string :location
      t.string :info

      t.timestamps
    end
  end
end
