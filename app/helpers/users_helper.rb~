module UsersHelper
 def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
  def status_of(current_user, user)
    @status = Friendship.select('status').where("friend_id = ? AND user_id = ?", user, current_user).take
    if @status.nil?
    "None"
    else 
	@status.status
    end
  end
end

