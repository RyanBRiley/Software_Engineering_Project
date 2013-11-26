class CreatePendingFriendRequests < ActiveRecord::Migration
  def change
    create_table :pending_friend_requests do |t|
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
