class RegistrationsController < Devise::RegistrationsController
  def show 
    @user = User.find(params[:id])
    @message = "This route shows all info for an individual #{@user.email}."
   @post = current_user.posts.build
  @posts = Post.where(user_id: @user.id)
   
  begin
   @c = Post.first
    @comments = @c.comments.build
  rescue Exception => e
   p "post doesnt exist" 
  end
  
 
 @params = params[:id]
 @current = User.find(current_user.id)
 @follow = @current.active_relationships.build
@all = Comment.all
@unfollow = @current.active_relationships.build


 if @user.id == current_user.id
    @loggedin = true
else
    @loggedin = false
    end

@following = @current.following

 



  end

  




private
def follow(other_user)
    active_relationships.create(follower_id: other_user.id)
end
def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
end

def following?(other_user)
    following.include?(other_user)
end



end 