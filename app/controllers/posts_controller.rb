class PostsController < ApplicationController

def create

    @posts = current_user.posts.build(post_params)
    if @posts.save
      flash[:success] = "Micropost created!"
      redirect_to user_path(current_user.id)
end
end

def post_params
      params.require(:post).permit(:content)
    end
end