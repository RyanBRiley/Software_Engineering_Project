class StaticPagesController < ApplicationController
  def home
      if signed_in?
     @post = current_user.posts.build 
     @post_context = "Update your status"
     @post_owner_id = current_user.id 
    @posts = current_user.posts.joins(:poster).paginate(page: params[:page]) 
    @post_owner_id = current_user.id
       end
  end

  def help
  end

  def about
  end

  def contact
  end
end
