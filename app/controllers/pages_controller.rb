class PagesController < ApplicationController
  def home
  	@charities = Charity.all
  	if current_user.instance_of? Charity
  		redirect_to action: "charity_home"
  	else
  		redirect_to action: "user_home"
	end
  end

  def user_home
  	@charities = Charity.all
  	@donations_to_charities = current_user.donations.where(recipient_type: "Charity")
	@donations_to_projects = current_user.donations.where(recipient_type: "Project")
  end

  def charity_home
  	@donations_received = current_user.donations
  	@user_projects = current_user.projects
  end

  def ranking

    @users = User.find_by_sql(["select name, id, total_value from users inner join (select user_id, sum(value) as total_value from donations group by user_id) as donations_sum on users.id = donations_sum.user_id order by total_value DESC LIMIT 10 "])

  end

end
