class SentFriendRequest < ActiveRecord::Base
belongs_to :user
has_one :received_friend_request, dependent: :destroy
default_scope -> { order('created_at DESC') }
validates :user_id, presence: true
validates :receiver_id, presence: true
end
