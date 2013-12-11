class UsersController < ApplicationController
  autocomplete :user, :name
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
     @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id]) if !params[:id].blank?
    @user = User.find_by_name(params[:name]) if params[:id].blank?
    if @user.blank?
       flash[:success] = "No Users named #{params[:name]}"
       redirect_to(:back)
    else
    @posts = @user.posts.joins(:poster).paginate(page: params[:page])
    @post_context = "Post to #{@user.name}'s feed"
    @post = @user.posts.build 
    @post_owner_id = @user.id
    @events = Event.all.delete_if {|e| !current_user.likes?(e)}
    @followed_games = Game.all.delete_if {|g| !current_user.follows?(g)}
    @followed_game_updates = Event.where("game_id = ?", @followed_games)
    end
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
	sign_in @user
	flash[:success] = "Welcome To GameBook!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User account deleted."
    redirect_to users_url
  end

  def delete_posts
    flash[:success] = current_user.posts
   # flash[:success] = "All Posts Deleted"
    #redirect_to(current_user)
  end
  
  def pending_friends
  @pfriend = Friendship.select('user_id').where("friend_id = ? AND status = ?", params[:current], "requested")
  @users = User.where(id: @pfriend)
  end

  def friends
  @users = current_user.friends
  end

  def find_new_friends
  @recommendations= []
  current_user.friendships.each do |f| 
     
	User.find(f.friend_id).friendships.each {|ff| @recommendations << User.find(ff.friend_id)}
	@recommendations = @recommendations.uniq
	@recommendations.delete_if {|u| current_user.friends?(u) || current_user?(u)}
      
end
end

 
#@users = @users.uniq 
 #    end
  #   end

  def attend
    current_user.like!(Event.find(params[:id]))
    flash[:success] = "You are registered to attend this event"
    redirect_to(:back)
  end

   def unattend
    current_user.unlike!(Event.find(params[:id]))
    flash[:success] = "You are no longer registered to attend this event"
    redirect_to(:back)
  end
 
 def unfollow
    current_user.unfollow!(Game.find(params[:id]))
    flash[:success] = "You are no longer receiving updates for this game"
    redirect_to(:back)
  end

   def follow
       current_user.follow!(Game.find(params[:id]))
	flash[:success] = "You are now receiving updates for this game"
    redirect_to(:back)
   end
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
   
end
