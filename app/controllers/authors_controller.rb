class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

end

# rake routes | grep authors