class CommentsController < ApplicationController
def create
    @c = Post.find(params[:selected])
    @comments = @c.comments.build(comment_params)
    if @comments.save!
      flash[:success] = "Micropost created!"
      redirect_to user_path(current_user.id)
end
end
def comment_params
      params.require(:comment).permit(:content,:name)
    end



end
