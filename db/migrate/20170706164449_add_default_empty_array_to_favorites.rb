class AddDefaultEmptyArrayToFavorites < ActiveRecord::Migration[5.1]
  def change
    remove_column(:users, :favorites)

    add_column(:users, :favorites, :integer, array: true, default: [])
  end
end
