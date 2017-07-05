class PictureController < ApplicationController

  def all
    @images = Image.all
    @user = current_user
  end

end
