class HomeController < ApplicationController
  before_action :prevent_index_access, only: [:index] 
  
  def index
  end

  private

  def prevent_index_access
    redirect_to employer_path(current_employer) if current_employer
  end
end
 