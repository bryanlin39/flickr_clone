class ImagesController < ApplicationController
  def new
    @user = current_user
    @image = @user.images.new
  end

  def create
    @user = current_user
    @image = @user.images.create(image_params)
    redirect_to '/'
  end

  def show
    @user = User.find(params[:user_id])
    @image = Image.find(params[:id])
  end

  def destroy
    @user = current_user
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to '/'
  end

private

def image_params
  params.require(:image).permit(:upload)
end

end
