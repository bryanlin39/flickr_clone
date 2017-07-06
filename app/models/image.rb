class Image < ApplicationRecord
  belongs_to :user

  scope :tagged, ->(user) { where("user_id =?", user)}

  has_attached_file :upload, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :upload, content_type: /\Aimage\/.*\z/
end
