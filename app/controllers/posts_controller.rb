class PostsController < ApplicationController

  load_and_authorize_resource

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
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
    params.require(:post).permit(:title, :body, :user_id)
  end


end
