class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :layout_by_resource

  # before_action :configure_permitted_parameters, if: :devise_controller?


  def not_found
    render_404
  end
  
  protected

  def layout_by_resource
    if devise_controller? && action_name == "new"
      "devise"
    else
      "application"
    end
  end

  # def configure_permitted_parameters
  #   if current_user
  #     devise_parameter_sanitizer.permit(:account_update, keys: [:name, :bio, :objective, :level, :university, :major, :skill, :city, :facebook, :twitter, :linkedin, :phone, :gender])
  #     devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
  #   else
  #     devise_parameter_sanitizer.permit(:account_update, keys: [])

  #     devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :username, :phone_number])
  #   end
  # end

  def render_404
    respond_to do |format|
      format.html do
        render file: Rails.root.join("public", "404"), layout: false, status: "404"
      end
      # Prevent the Rails CSRF protector from thinking a missing .js file is a JavaScript file
      format.js { 
        render json: '', status: :not_found, content_type: 'application/json' }
      format.any { head :not_found }
    end
  end

end
