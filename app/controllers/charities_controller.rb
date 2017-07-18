class CharitiesController < ApplicationController
  def show
  	@charity = Charity.find(params[:id])
  	@donations = Donation.where(recipient_id: @charity.id)
  	@projects = Project.where(user_id: @charity.id)
  end

  def index
  	if params[:term]
		@charities = Charity.where("name LIKE ?", "%#{params[:term]}%")
	else
		@charities = Charity.all			
	end
  end
end
