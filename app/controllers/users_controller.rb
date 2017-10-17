class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
  		#debugger # opens a rails console in prompt to debug
  end

  def index
  	@user = User.find(current_person.id)
  	redirect_to @user
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
		@user = User.find(params[:id])
 		if @user.update_attributes(user_params)
	      	redirect_to profile_person_user_path
  	else
	 		render 'edit'
	  end
	end

  def profile
    @user = User.find(params[:id])
  end

  private
	def user_params
      params.require(:user).permit(:avatar)
  end
	
end
