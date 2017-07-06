class DropTagsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table(:tags)

    add_column(:images, :tags, :integer, :array => true, :default => [])
  end
end
