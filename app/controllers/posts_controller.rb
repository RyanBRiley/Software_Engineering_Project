class PostsController < ApplicationController
    #before_action :signed_in_user, only: [:create, :destroy]

  def create
    @user = User.find(params[:post][:post_owner])
    if current_user.friends?(@user) || current_user?(@user)
    @post = @user.posts.build(post_params)
    if @post.save
      #flash[:success] = "post created!"
      flash[:success] = "post sent"
      redirect_to(:back)
    else
      render 'static_pages/home'
    end
   else
      render 'static_pages/home' 
   end
  end

  def destroy
    Post.find(params[:id]).destroy 
    flash[:success] = "Post Removed"
    redirect_to(:back)
  end

 def destroy_posts
    current_user.posts.destroy_all 

    flash[:success] = "All Posts Removed"
    redirect_to(:back)
  end

  private

    def post_params
      params.require(:post).permit(:content, :poster_id)
    end
end
