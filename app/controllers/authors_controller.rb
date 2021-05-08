class AuthorsController < ApplicationController

  def show
    @author = Author.find_by(params[:id])
  end
end
