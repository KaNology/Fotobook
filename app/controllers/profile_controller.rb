class ProfileController < ApplicationController
    # My Profile
    def photo
        @user = User.find(params[:user_id])
        @posts = @user.posts.all
    end

    def album
        @user = User.find(params[:user_id])
        @albums = @user.albums.all
    end
end
