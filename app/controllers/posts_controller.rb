class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def create
    @post = Post.create(params[:post])
    
    redirect_to action: 'show', id: @post.id
    # redirect_to "/posts/#{@post.id}"
    # redirect_to post_path(@post) Kyrie thinksssss this works
    # redirect_to post_url(@post.id) Kyrie thinksssss this works
  end

  def new
    @post = Post.new()
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
   @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to action: "show", id: @post.id
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: 'index'
  end
end
