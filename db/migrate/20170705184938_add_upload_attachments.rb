class AddUploadAttachments < ActiveRecord::Migration[5.1]
  def up
    add_attachment :images, :upload
  end

  def down
    remove_attachment :images, :upload
  end
end
