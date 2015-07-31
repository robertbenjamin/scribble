class CommentsController < ApplicationController

# Only need create edit update destroy

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  # edit
  def edit
    @comment = Comment.find(params[:post_id])
  end

  # update
  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :text)
  end
end
