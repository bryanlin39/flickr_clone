class AddImage < ActiveRecord::Migration[5.1]
  def change
    remove_column(:images, :upload_file_name)
    remove_column(:images, :upload_content_type)
    remove_column(:images, :upload_file_size)
    remove_column(:images, :upload_updated_at)
  end

  def up
    add_attachment :images, :upload
  end

  def down
    remove_attachment :images, :upload
  end
end
