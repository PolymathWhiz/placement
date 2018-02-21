class PostsController < ApplicationController
  before_action :authenticate_employer!
  before_action :set_post, only: [:destroy, :edit]

  layout 'employer'

  def index
    @posts = Post.where(employer_id: current_employer.id)
    @post_count = @posts.count
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_employer.posts.build(post_params)
    if @post.save
      flash[:success] = 'Post successfully posted'
      redirect_to employer_path(current_employer)
    else
      render :new
    end
  end

  def edit; end

  def update; end

  def destroy
    @post.destroy
    flash[:success] = 'Post was successfully deleted'
    redirect_to employer_path(current_employer)
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
