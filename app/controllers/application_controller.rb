class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_last_seen_at, if: proc { user_signed_in? }

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :gender, :country, :city])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :gender, :country, :city])
  end
  private
def set_last_seen_at
  current_user.update_attribute(:last_seen_at, Time.current)
end
end
