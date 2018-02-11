class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def not_found
    render_404
  end

  protected

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
