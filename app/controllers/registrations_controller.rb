class RegistrationsController < Devise::RegistrationsController
  def show 
    @user = User.find(params[:id])
    @message = "This route shows all info for an individual #{@user.email}."
  end


end 