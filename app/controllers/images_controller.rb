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

  def tag_users
    image = Image.find(params[:id])
    tag_input = params[:username]
    user_to_tag = User.user_exists(tag_input)
    if user_to_tag
      image.tags.push(user_to_tag.id)
      image.save
    end
    redirect_to user_image_path(Image.find(params[:user_id]), image)
  end

  def destroy
    @user = current_user
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to '/'
  end

  def favorite
    user = current_user
    image_id = params[:id].to_i
    image = Image.find(image_id)
    user.favorites.push(image_id)
    user.save
    redirect_to user_path(current_user)
  end

  def unfavorite
    user = current_user
    image_id = params[:id].to_i
    image = Image.find(image_id)
    user.favorites.delete(image_id)
    user.save
    redirect_to user_path(current_user)
  end

private

  def image_params
    params.require(:image).permit(:upload)
  end

  def find_user_by_username(username)
    found_user = nil
    User.all.each do |user|
      if user.email == username
        found_user = user
      end
    end
    return found_user
  end

end
