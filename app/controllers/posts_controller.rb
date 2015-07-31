class PostsController < ApplicationController
  # index
  def index
    @posts = Post.all.reverse
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @user = User.find(session[:user]["id"])
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end


  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path()
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :text, :date)
  end
end
