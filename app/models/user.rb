class User < ApplicationRecord
  has_many :images

  def in_favorites(image_id)
    found_favorite = false
    self.favorites.each do |favorite|
      if image_id == favorite
        found_favorite = true
      end
    end
    return found_favorite
  end

  def self.user_exists(user_name)
    found_user = false
    User.all.each do |user|
      if user_name == user.email
        found_user = user
      end
    end
    return found_user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
