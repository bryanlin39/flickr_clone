class UsersController < ApplicationController

  def profile
    @user = current_user
    @images = @user.images
    render :profile
  end

end
