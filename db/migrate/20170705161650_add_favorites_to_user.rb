class AddFavoritesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column(:users,:favorites,:integer,:array => true)
  end
end
