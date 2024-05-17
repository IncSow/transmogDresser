# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, notice: 'You need to be loggded in.'
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
