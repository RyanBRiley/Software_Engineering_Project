class FriendshipsController < ApplicationController
#before_action :signed_in_user

  def index
  redirect_to users_path
  end

  def create
  current_user.be_friends_with(user)
  #@received_friend_request = params[:receiver].to_i.received_friend_requests.build(:requestor => "#{current_user}")
  flash[:success] = "Friend request sent!"
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
