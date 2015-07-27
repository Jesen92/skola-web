class MojegrupeController < ApplicationController
before_action :authenticate_user!
  helper_method :current_user

  def index
    if current_user
     @profesor = current_user.profesor
   	 @groups = @profesor.groups
     @user = current_user
<<<<<<< HEAD
=======

>>>>>>> 4a8a0996df53f3a2db426e0ad8538315fc9d0f55
   else
     redirect_to new_user_session_path, notice: 'You are not logged in.'
   end
  end

  def show
  	@group = Group.find(params[:id])
  end


end
