# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, notice: 'You need to be loggded in.'
    end
  end
end
