class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def layout_by_resource
    if devise_controller? && action_name == "new"
      "devise"
    else
      "application"
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :bio, :objective, :level, :university, :major, :skill, :city, :facebook, :twitter, :linkedin, :phone, :gender])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
  end
end
