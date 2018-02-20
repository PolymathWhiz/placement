class PostsController < ApplicationController
  layout 'employer'

  before_action :set_post, only: [:destroy]

  # include PostsHelper

  def new
    @post = Post.new
  end

  def create
    @post = current_employer.posts.build(post_params)
    post_date = @post.application_ends
    if @post.save
      flash[:success] = 'Post successfully posted'
      redirect_to employer_path(current_employer)
    else
      render :new
    end
  end

  def update; end

  def destroy
    @post.destroy
    flash[:success] = 'Post was successfully deleted'
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :position_type,
                                 :requirement, :responsibilities,
                                 :candidate_description,
                                 :candidate_qualification, :application_ends)
  end

  def set_post
    @post = current_employer.posts.find(params[:id])
  end
end
