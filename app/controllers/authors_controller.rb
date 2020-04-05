class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end


  #Below Methods are no longer needed now that we are nesting the posts and post routes under authors in config/routes
  # def posts_index
  #   @author = Author.find(params[:id])
  #   @posts = @author.posts
  #   render template: 'posts/index'
  # end

  # def post
  #   @author = Author.find(params[:id])
    
  #   #Note we can find the post directly from post_id without needing to go through @author
  #   @post = Post.find(params[:post_id])
  #   render template: 'posts/show'
  # end



end
