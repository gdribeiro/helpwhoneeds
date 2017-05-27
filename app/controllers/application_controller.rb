class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   # Forces the use to authenticad before do anything
   before_action :authenticate_user!

end
