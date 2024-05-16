class ApplicationController < ActionController::API
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user|
      user.permit(:email, :password)
    end

    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:fullname, :email, :password)
    end
  end
end
