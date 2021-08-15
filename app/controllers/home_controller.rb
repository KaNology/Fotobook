class HomeController < ApplicationController
  def show
    @photos = Post.all
    @albums = Album.all
  end
end
