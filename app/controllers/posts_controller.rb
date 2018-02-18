class PostsController < ApplicationController
  layout 'employer'

  def new 
    @post = Post.new
  end

  def create; end

  def update; end
end
