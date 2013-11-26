class SentFriendRequestsController < ApplicationController
  #before_action :signed_in_user

  def create
  @user = params[:receiver]
  @received_friend_request = @user.received_friend_requests.build(:requestor => params[:requestor])
  flash[:success] = "Friend request sent! #{params[:id]}"
  redirect_to users_path
  end

  def destroy
  end

  def index
  redirect_to users_path
  end
end

 #private

    #def sent_friend_request_params
     # params.require(:user, :receiver)
    
#end
