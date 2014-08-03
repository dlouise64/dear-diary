class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    if @post.update_attributes(post_params)
      redirect_to action: 'show'
    else
      redirect_to action: 'edit'
    end
  end

  def destroy
    @post = Post.find params[:id]
    if @post.destroy
      redirect_to action: 'index'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
