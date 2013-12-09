class Game < ActiveRecord::Base
has_many :events, dependent: :destroy
acts_as_followable
end
