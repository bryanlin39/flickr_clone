class ImagesController < ApplicationController
  def new
    @user = current_user
    @image = Image.new
  end

  def create
    @image = Image.create(image_params)
  end

  def show
  end

private

def image_params
  params.require(:image).permit(:upload)
end

end
