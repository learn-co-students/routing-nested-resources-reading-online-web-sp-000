class PostsController < ApplicationController

  def index
    #We added a conditional to the posts#index action to account for whether the user is trying to access the index of 
    #all posts (Post.all) or just the index of all posts by a certain author (Author.find(params[:author_id]).posts). 
    #Where is params[:author_id] coming from? Rails provides it for us through the nested route,
    #Rails takes the parent resource's name and appends _id
    if params[:author_id]
      @posts = Author.find(params[:author_id]).posts
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

private

  def post_params
    params.require(:post).permit(:title, :desription, :post_status, :author_id)
  end
end
