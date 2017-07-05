class UsersController < ApplicationController

  def show
    @user = current_user
    @images = @user.images
  end

end
