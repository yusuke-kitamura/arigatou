class AddPostIdToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :post_id, :integer
  end
end
