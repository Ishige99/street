class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :surname, :first_name, :surname_kana, :first_name_kana, :sex_id, :birthday])
  end

end
