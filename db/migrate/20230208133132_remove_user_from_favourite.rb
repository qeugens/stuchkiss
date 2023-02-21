class RemoveUserFromFavourite < ActiveRecord::Migration[7.0]
  def change
    remove_reference :favourites, :user, null: false, foreign_key: true
  end
end
