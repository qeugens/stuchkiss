class AddItemToFavourites < ActiveRecord::Migration[7.0]
  def change
    add_reference :favourites, :item, null: false, foreign_key: true
  end
end
