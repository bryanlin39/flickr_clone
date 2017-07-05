class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.attachment :upload

      t.timestamps
    end
  end
end
