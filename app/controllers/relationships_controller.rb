class RelationshipsController < ApplicationController

def create
 
 puts "TEST ME"

 @user = User.find(params[:follo])
@current = User.find(current_user.id)
@current.active_relationships.create(followed_id: @user.id )

end

def delete
 user = User.find_by_id(current_user.id)
  unfollow = user.following.find_by_id(params[:follo])
  user.following.delete(unfollow) 






# @user = User.find_by_id(current_user.id)
# @following = @user.following
# p "yes"
# @following.each do |f|
 
#   if f.id.to_s == params[:follo]
#     p f.id
#     p "match"
#     f.destroy
#   end
# end



end

end
