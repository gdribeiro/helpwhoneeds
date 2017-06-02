class CharitiesController < ApplicationController
  def show
  	@charity = Charity.find(params[:id])
  	@donations = @charity.donations
  end
end
