class PostsController < ApplicationController

  # include FormatUrl


  def new
    @post = Post.new 
  end

  def create
    @post = Post.new(post_params)
    @post.user_email = current_user.email
    @post.save
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
