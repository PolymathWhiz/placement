class PostsController < ApplicationController
  layout 'employer'

  include PostsHelper

  def new 
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post_date = @post.application_ends
    
    if is_date_valid?(@post_date)
      if @post.save
        flash[:success] = "Post successfully posted"
        redirect_back fallback_location: employer_path(current_employer)
      else
        render :new
      end
    else
      flash[:danger] = "Application ends date cannot be before today"
    end
  end

  def update; end

  private

  def post_params
    params.require(:post).permit(:title, :description, :role, :requirement, :responsibilities, :candidate_description, :candidate_qualification, :candidates_needed, :application_ends)
  end
end
