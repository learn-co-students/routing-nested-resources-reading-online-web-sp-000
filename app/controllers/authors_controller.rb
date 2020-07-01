class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  # all posts nested under an author:
  # author_post_path(author_id, post_id)

end





