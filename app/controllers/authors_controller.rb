class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  # Has nested posts handled via PostsController and routes.rb

end
