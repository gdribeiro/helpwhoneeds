class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Forces the use to authenticad before do anything
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters

    sign_up_params = [:name, :cpf, :cnpj, :wants_to_be_charity, :charity_type]
    devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_params)

    account_update_params = [:name, :cpf, :cnpj, :charity_type]
    devise_parameter_sanitizer.permit(:account_update, keys: account_update_params)
  end
end
