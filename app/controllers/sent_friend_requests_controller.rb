class SentFriendRequestsController < ApplicationController
  #before_action :signed_in_user

  def create
  @sent_friend_request = current_user.sent_friend_requests.build(:receiver => params[:receiver])
  @received_friend_request = params[:receiver].to_i.received_friend_requests.build(:requestor => "#{current_user}")
  flash[:success] = "Friend request sent! #{params[:receiver]}"
  redirect_to users_path
#redirect_to :controller => :received_friend_requests, :action => "create"
#redirect_to :controller => received_friend_requests(:requester => current_user, :receiver => params[:receiver]), action => :create
  end

  def destroy
  end
end

 #private

    #def sent_friend_request_params
     # params.require(:user, :receiver)
    
#end
