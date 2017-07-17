class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		if @user.instance_of? Charity
			redirect_to charity_path(@user)
		end
		@donations_to_charities = @user.donations.where(recipient_type: "Charity")
		@donations_to_projects = @user.donations.where(recipient_type: "Project")
	end
end
