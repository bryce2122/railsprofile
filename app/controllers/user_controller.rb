class UserController < ApplicationController

def create 

@user = User.find_by_id(current_user.id)



end







end
