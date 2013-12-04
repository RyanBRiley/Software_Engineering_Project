class PostsController < ApplicationController
    #before_action :signed_in_user, only: [:create, :destroy]

  def create
    @user = User.find(params[:post][:post_owner])
    if current_user.friends?(@user) || current_user?(@user)
    @post = @user.posts.build(post_params)
    if @post.save
      #flash[:success] = "post created!"
      flash[:success] = "post sent"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
   else
      render 'static_pages/home' 
   end
  end

  def destroy
  end

  private

    def post_params
      params.require(:post).permit(:content, :poster_id)
    end
end
