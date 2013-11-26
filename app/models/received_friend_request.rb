class ReceivedFriendRequest < ActiveRecord::Base
belongs_to :user
belongs_to :sent_friend_request
default_scope -> { order('created_at DESC') }
validates :user_id, presence: true
validates :sender_id, presence: true
validates :sent_friend_request_id, presence: true
end
