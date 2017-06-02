class PagesController < ApplicationController
  def home
  	@charities = Charity.all
  end
end
