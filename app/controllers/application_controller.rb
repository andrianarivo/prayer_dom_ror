class ApplicationController < ActionController::Base
  include Internationalization

  before_action :configure_permitted_parameters, if: :devise_controller?

  def default_url_options
    { locale: I18n.locale }
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username role_id avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username role_id avatar])
  end
end
