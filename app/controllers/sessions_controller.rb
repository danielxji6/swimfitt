class SessionsController < ApplicationController

	def new
		if logged_in?
		end
		@user = User.new
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
		end
	end

	def destroy
		logout
	end

end
