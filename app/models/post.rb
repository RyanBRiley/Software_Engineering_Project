class Post < ActiveRecord::Base
belongs_to :user
belongs_to :poster, class_name: "User", foreign_key: "poster_id"
validates :user_id, presence: true
validates :content, presence: true
end


