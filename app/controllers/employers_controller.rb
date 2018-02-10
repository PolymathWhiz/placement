class EmployersController < ApplicationController
  before_action :set_employer, only: [:show]
  
  def show; end

  private
  
  def set_employer
    @employer = Employer.find(params[:id])
  end
end
