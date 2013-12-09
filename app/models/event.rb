class Event < ActiveRecord::Base
belongs_to :user
belongs_to :game
acts_as_likeable
default_scope -> { order('event_date ASC') }
validates :name,  presence: true
validates :event_date,  presence: true
validates :user_id,  presence: true
validates :location,  presence: true
validates :game_id,  presence: true
end
