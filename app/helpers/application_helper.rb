module ApplicationHelper
  def is_admin?
    current_user && current_user.admin
  end

  def user_image?
    current_user && current_user.id == @image.user_id
  end
end
