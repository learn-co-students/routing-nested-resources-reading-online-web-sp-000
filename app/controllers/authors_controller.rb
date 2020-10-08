class AuthorsController < ApplicationController

  def post
    @author = Author.find(params[:id])
 
    # Note that because ids are unique by table we can go directly to
    # Post.find — no need for @author.posts.find...
    @post = Post.find(params[:post_id])
    render template: 'posts/show'
  end

end
