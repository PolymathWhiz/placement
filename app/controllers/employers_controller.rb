class EmployersController < ApplicationController
  layout 'employer'

  before_action :set_employer, only: [:show]
  before_action :prevent_page_views, only: [:show]
  
  def show
  end

  private
  
  def set_employer
    @employer = Employer.find(params[:id])
  end

  def prevent_page_views
    redirect_to root_path if !current_employer
  end
end
