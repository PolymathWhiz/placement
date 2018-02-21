class EmployersController < ApplicationController
  layout 'employer'
  before_action :authenticate_employer!
  before_action :set_employer, only: [:show]
  before_action :prevent_page_views, only: [:show]

  def show; end

  def security
    @login_ip = current_employer.current_sign_in_ip
    @last_login_ip = current_employer.last_sign_in_ip
    @sign_in_count = current_employer.sign_in_count
    @member_since = current_employer.created_at.to_date.to_s(:long)
  end

  private

  def set_employer
    @employer = Employer.find(params[:id])
  end

  def prevent_page_views
    redirect_to root_path unless current_employer
  end
end
