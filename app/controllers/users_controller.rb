class UsersController < ApplicationController
  def index
    @users = User.where(type:'Charity').all
  end

  def show
  end
end
