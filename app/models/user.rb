# 1. Need more functionality within user
# 2. Still missing users ability to make changes to anything on the site
# 3. to get the basic functionality in
# 4. to allow users to post to others wall
# 5. to allow users to designate themselves as event attendees  

class User < ActiveRecord::Base
before_save { self.email = email.downcase }
validates :name,  presence: true, length: { maximum: 50 }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
has_many :posts
has_secure_password
validates :password, length: { minimum: 6 }
end
